/*
 * pl_ctrl.cc
 *
 *  Created on: 4 avr. 2014
 *      Author: XIATAN
 */


#include "xparameters.h"
#include "xil_types.h"
#include "xstatus.h"
#include "devcfg.h"
//#include "../bsp/include/xparameters_user.h"C
#include "performance.h"
#include "xil_printf.h"
//#include "xil_cache.h"
#include "../include/syscall_list.h"
#include "../include/compiler.h"
#include "../include/irq.h"
#include "../include/vpsr.h"
#include "stdlib.h"
#include "HWManager.h"
//#include <stdlib.h>
//#define HW_DEV0 		0x10001000
//#define HW_DEV1 		0x10002000

#if IS_PRR_MANAGER_RCFG_TEST
int False_PCAP_Transfer(XDcfg *Instance, u32 StartAddress, u32 WordLength){
	//xil_printf("addr %x size %x", StartAddress, WordLength);
	return StartAddress + WordLength;
};
#endif

extern mword *hwmgr_vpsr_cpsr;

HW_Task_Descriptor HWTaskIndexTable[MAX_PRR_NUM][MAX_DEVICE_NUM] = {
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0}
};

IF_entry IFIndexTable[MAX_VM_NUM][MAX_DEVICE_NUM]={};

		/*{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0}
};*/



IF_entry* PRClientTable[MAX_PRR_NUM]={0}; // used to indicate that a PR has an associated interface




HW_Task_Descriptor current_HW_Task_Descriptor;
IF_entry* Current_RCPG;



XDcfg XDcfg_0;

Solution s_empty = {false,nonvalid,0};

mword HWManager_STK[512];

mword *main_stack_top = &HWManager_STK[511];

//PrStat PRSTATE;

#if PRR_MONITOR_IN_SW
SW_PRR_MONITOR Sw_PRR_Monitor;
#endif

void PRMonitor_init(void)
{
int i=0;
for (i=0;i<MAX_PRR_NUM;i++)
	{
	Sw_PRR_Monitor.PR_SEARCH_CMD_REG=0;
	Sw_PRR_Monitor.PR_SEARCH_RESULT_REG=0;
	Sw_PRR_Monitor.PRTable[i].PRID= i;
	Sw_PRR_Monitor.PRTable[i].DevID=0xFF;
	Sw_PRR_Monitor.PRTable[i].Status= IDLE;
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// IFIndexTable initialization

void IF_init(void)
{
int i,j;
for (i=0;i<MAX_VM_NUM;i++)
	for(j=0;j<MAX_DEVICE_NUM;j++)
	{
	IFIndexTable[i][j].Status = IDLE;
	IFIndexTable[i][j].VMID = 0xff; // 0xFF means not valid
	IFIndexTable[i][j].DevID= 0xff; // 0xFF means not valid
	IFIndexTable[i][j].IFID = 0;
	IFIndexTable[i][j].PRID = 0xFF; // 0xFF means not valid
	IFIndexTable[i][j].PRIO = 0;
	IFIndexTable[i][j].s.M = nonvalid;
	IFIndexTable[i][j].s.PR_id= 0;
	IFIndexTable[i][j].s.Reconf= false;
	IFIndexTable[i][j].IS_Allocated = false;
	IFIndexTable[i][j].IS_Connected = false;
	}
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void IF_alloc(int vm_id, int dev_id, int prio){

	IFIndexTable[vm_id][dev_id].Status= IDLE;
	IFIndexTable[vm_id][dev_id].VMID = vm_id;
	IFIndexTable[vm_id][dev_id].DevID= dev_id;
	//IFIndexTable[vm_id][dev_id].IFID = (vm_id-3)*MAX_VM_NUM + dev_id; // First OS is VM3, this is temporary
	IFIndexTable[vm_id][dev_id].IFID = (vm_id-3)*MAX_VM_NUM + dev_id;
	IFIndexTable[vm_id][dev_id].PRID = 0xFF;
	IFIndexTable[vm_id][dev_id].PRIO = prio;
	IFIndexTable[vm_id][dev_id].s = s_empty;
	IFIndexTable[vm_id][dev_id].IS_Connected= false;
	IFIndexTable[vm_id][dev_id].IS_Allocated= true;

	/* Insert the IF mapping page to VM as Read-Only page	*/
	//sys_insert_fpga_mapping(int ec_id, mword virt_addr, mword phys_addr)
	sys_insert_fpga_mapping(vm_id, dev_id * PR_IF_SIZE + HW_DEV0,                PR_IF0 + IFIndexTable[vm_id][dev_id].IFID * PR_IF_SIZE);


	xil_printf("(IF_alloc): vm_id= %d , Insert IF mapping page to VM as read-only fom virt: %x to phy :%x \r\n",vm_id,dev_id * PR_IF_SIZE + HW_DEV0,PR_IF0 +  IFIndexTable[vm_id][dev_id].IFID * PR_IF_SIZE);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void HWTaskIndexTable_Init(void)
{
	// [PRR_ID-1][DEVICE_NUM-1]
	// adder
	HWTaskIndexTable[0][0].Addr =PARTIAL_RECONFIG_ADD_ADDR;
	HWTaskIndexTable[0][0].Size =PARTIAL_BINFILE_LEN ;
	//sub
	HWTaskIndexTable[0][1].Addr =PARTIAL_RECONFIG_SUB_ADDR;
	HWTaskIndexTable[0][1].Size =PARTIAL_BINFILE_LEN ;

}


void PR_HOST_LIST_init(){
	mword temp = 0;
	int shift = 0;

	for(int i=0; i<MAX_DEVICE_NUM; i++)
		for(int j=0; j<MAX_PRR_NUM; j++){
			//if(HWTaskIndexTable[j][i])
			//	temp |=  1<<shift;
			//shift++;
		}
	//PRRC_WriteReg(PR_HOST_LIST_OFFSET, temp);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
 *  Check if there is suitable PR for the IF by:
 *  	1) Giving VM, Device, Priority to PR Controller to find a solution
 *  	2) Get result (solution)
 */
void check_available(IF_entry *p){
	mword PR_Solution;


	// Check if the IP can be implemented in the PRR
	// It is OK if the previous IP has finished its job
	xil_printf("(Check available\n\r)");
	PR_SEARCH_SOLUTION(p->VMID, p->DevID, p->PRIO);
	PR_Solution = PRRC_ReadReg(PR_SEARCH_RESULT_OFFSET);

	xil_printf("(Check available) PR_Solution = %x \n\r", PR_Solution);
	p->s.PR_id 	= PR_Solution & 0xff;
	p->s.M 		= (PR_Solution >> 8) & 0x7f;
	p->s.Reconf = PR_Solution >> 15;


	xil_printf("(Check available) PR_id = %d, Method= %d, Reconf= %d \n\r",p->s.PR_id ,p->s.M, p->s.Reconf);

}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/* 	Disconnect PR from current connected IF, including:
 * 		1)	Check if the target PR is connected with any IF. if(true) then:
 * 		2)	Clear IF.PRID
 * 		3) 	Clear PRClientTable[PRID]
 * 		4)	Use PRR_DISCONNECT command to disconnect IF from PR
 * 		5) 	Set previous IF page (4K) as read-only in VM's page table
 */
void IF_Disconnect(int PR_id){
	IF_entry *p = PRClientTable[PR_id];

	if(p){
		xil_printf("(IF_Disconnect) \n\r");
		p->PRID = 0xff;
		p->IS_Connected = false;
		PRClientTable[PR_id] = 0;
		//PRR_DISCONNECT(PR_id);
		sys_fpga_page_ro(p->VMID, HW_DEV0 + p->DevID * PR_IF_SIZE);
		xil_printf("(IF_DisConnect) VMID: %d, address: %d\n\r", p->VMID,HW_DEV0 + p->DevID * PR_IF_SIZE);
	}
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
 *	Connect the IF with target PR, including:
 *	 	1) Set IF.PRID
 *		2) Set PRClientTable[PRID]
 *	 	3) Use PRR_IF_CONNECT command to connect PR with IF
 *	 	4) Set the connected IF page as read-write in VM's page table
 */
void IF_Connect(IF_entry *p, int PR_id){
	p->PRID = PR_id;
	xil_printf("(IF_Connect) p->PRID = %d \n\r",p->PRID);
	PRClientTable[PR_id] = p;
	//PRR_IF_CONNECT(p->VMID, p->DevID, p->PRIO, PR_id);
	xil_printf("(IF_Connect) address = %x \n\r \n\r", HW_DEV0 + p->DevID * PR_IF_SIZE);
	sys_fpga_page_rw(p->VMID, HW_DEV0 + p->DevID * PR_IF_SIZE);

	p->IS_Connected=true;
	xil_printf("(IF_Connect) VMID: %d, address: %x\n\r", p->VMID,HW_DEV0 + p->DevID * PR_IF_SIZE);

}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
 * 	Implement the solution given by the FPGA side.
 * 	This function returns 0 ONLY when the target device is READY to go.
 * 	Otherwise, it returns 1 to make VM wait.
 */
int Run_Solution(IF_entry *p){
	HW_Task_Descriptor bitfile;
	unsigned int *addr;
	int status;

	switch(p->s.M){
	/*
	 * Method.unavailable means no appropriate PR for now.
	 * Request is suspended until a solution is found by PR controller
	 * 	1) Return 1 (WAIT)
 	 */
	case unavailable:
		xil_printf("(Run Solution) unavailable \n\r");
		return 1;

	/* Method.assign means to assign an IDLE PR to IF, including:
	 * 	1) Disconnect target PR with previously-linked IF
	 * 	2) If need reconfiguration:
	 * 		1. Launch PCAP Transfer
	 * 		2. PRSTATE.stat = RCFG
	 * 		3. Suspend current Solution until PCAP is done.
	 * 		4. Return 1 (WAIT)
	 * 	3) If don't need reconfiguration:
	 * 		1. Connect PR with current IF, and now the PR is ready to be used
	 * 		2. Clear IF.Solution
	 * 		3. PRSTATE.stat = HOLD
	 * 		4. Return 0 (READY)
	 */
	case assign:
		xil_printf("(Run Solution) assign \n\r");
		IF_Disconnect(p->s.PR_id);

		if(p->s.Reconf == true){
			xil_printf("(Run_solution) (assign) Reconfiguration is required\n\r");
			xil_printf("(Run_solution) (assign) HWTaskIndexTable[%d][%d] \n\r ",p->s.PR_id,p->DevID);
			bitfile.Addr= HWTaskIndexTable[p->s.PR_id][p->DevID].Addr;
			bitfile.Size= HWTaskIndexTable[p->s.PR_id][p->DevID].Size;

			xil_printf("(Run solution) (assign) bitfile.Addr= %x \n\r",bitfile.Addr);
			xil_printf("(Run solution) (assign) bitfile.Size= %x \n\r",bitfile.Size);
			status = XDcfg_TransferBitfile(&XDcfg_0, bitfile.Addr, bitfile.Size );
			if (status != XST_SUCCESS)
								{
								xil_printf("PCAP Error (%d)!  \n\r", status);
								while(1);
								}

			xil_printf("(Run_solution) Transfer bitfile done \n\r");



			//Sw_PRR_Monitor.PRTable[p->s.PR_id].Status = IDLE; // The PR (PR_ID) is configured and in an idle state
			Sw_PRR_Monitor.PRTable[p->s.PR_id].DevID = p->DevID; // The PR contains the DevID;
			xil_printf("(Run_solution) Sw_PRR_Monitor.PRTable[%d].DevID = %d, \n\r", p->s.PR_id,p->DevID);
			//PRR_STATE_RCFG_SET(p->s.PR_id);
			//Current_RCPG = p;

			xil_printf("(Run_solution) Return \n\r");
			return 1;
		}
		else{
			xil_printf("(Run_solution) Reconf is FALSE \n\r");
			IF_Connect(p, p->s.PR_id);
			//p->s = s_empty;
			//PRR_STATE_HOLD_SET(p->s.PR_id);

		}
		break;
	/*
	 * Method.preempt means to stop low-priority non-IDLE PR and assign to IF:
	 * 	1) Give STOP command to PR Controller
	 * 	2) Return 1 (WAIT)
	 */
	case preempt:
		xil_printf("(Run_solution) Preempt \n\r");
		PR_STOP(p->s.PR_id);
		return 1;

	case nonvalid:
	default:
		print("ERROR: Undefined Solution Method! \n\r");
	}
	xil_printf("(Run_solution) Return \n\r");
	return 0;
}



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*	Get HW Task information:
 *  R0: VM ID
 *  R1: Device Interface Address
 *  R2: Task Priority
 */
NORETURN
void HWManager_Main(int VM_id, mword Dev_Addr, int prio) asm ("HWManager_Main");
void HWManager_Main(int VM_id, mword Dev_Addr, int prio)
{
	int Dev_id;
	static IF_entry *p_IF;


#if IS_PRR_MANAGER_ASSIGN_TEST | IS_PRR_MANAGER_PREEMT_TEST | IS_PRR_MANAGER_RCFG_TEST
	XTime_SetTime(0);
#endif





	Dev_id = (Dev_Addr - HW_DEV0)/PR_IF_SIZE;

	xil_printf("(HWManager_Main)HWManager Invoked:  Dev_id : %d ; VM_id=%d, Prio=%d) \n\r",Dev_id,VM_id,prio);

	if(IFIndexTable[VM_id][Dev_id].IS_Allocated == false) // Check if the IF of (VM, Device) exists
	{
	// if it does not exist, we need to create it
	xil_printf("IF_alloc \n\r");
	IF_alloc(VM_id, Dev_id, prio);
    xil_printf("(HWManager_Main) IF allocated: Dev_id : %d ; VM_id=%d, Prio=%d,PR_ID=%d) \n\r",Dev_id,VM_id,prio,IFIndexTable[VM_id][Dev_id].PRID);

	}

   p_IF = &IFIndexTable[VM_id][Dev_id];

   xil_printf("IFIndexTable[%d][%d].VMID= %d \n\r",VM_id, Dev_id,p_IF->VMID);
   xil_printf("IFIndexTable[%d][%d].DEVID= %d \n\r",VM_id, Dev_id,p_IF->DevID);
   xil_printf("IFIndexTable[%d][%d].PRID= %d \n\r",VM_id, Dev_id,p_IF->PRID);
   xil_printf("IFIndexTable[%d][%d].IS_Allocated= %d \n\r",VM_id, Dev_id,p_IF->IS_Allocated);

	/* If this IF is still linked with a PR, then this is an error.
	 * Otherwise, search for PRs for an appropriate solution */
	//xil_printf("P_IF->PRID = %d\n\r ",p_IF->PRID);


	if(p_IF->PRID != 0xFF){
		print("(HWManager_Main) Error: IF was not correctly cleared (unlinked) \n\r");
		while(1);
		}
	// If this IF is now having a valid solution, means the solution is not over
	//else if(p_IF->s.M != nonvalid){
	//	xil_printf("p_IF->S.M = %d \n\r",p_IF->s.M);
		//sys_IVC_Send(p_IF->VMID, IVC_DEV_WAIT, p_IF->DevID);
	//	print("(HWManager_Main) Wait more \n\r");
	//	}
	else{
		check_available(p_IF);

		xil_printf("(HWManager_Main)p_IF->s.PR_id = %d \n\r",p_IF->s.PR_id);


		if(Run_Solution(p_IF)){
			print("(HWManager_Main) (Run_Solution done) \n\r");
			}
		/* Run_Solution() returning 1 means waiting  */
			//sys_IVC_Send(p_IF->VMID, IVC_DEV_WAIT, p_IF->DevID);
		}

	*hwmgr_vpsr_cpsr &=0xffffff7f;

#if IS_PRR_MANAGER_ASSIGN_TEST
	PM_record(Xil_In32(GLOBAL_TMR_BASEADDR+GTIMER_COUNTER_LOWER_OFFSET));
#endif

#if IS_PRR_MANAGER_PREEMT_TEST
	//PM_record(Xil_In32(GLOBAL_TMR_BASEADDR+GTIMER_COUNTER_LOWER_OFFSET));
	if(!IFIndexTable[3][1])
		IFIndexTable[3][1] = IF_alloc(3, 1, 1);
	IF_Connect(IFIndexTable[3][1], 1);
	PRRC_WriteReg(PR_STOP_INT_OFFSET, (3<<24)|(0<<16)|(1<<8));
	PRRC_WriteReg(0,1);
#endif

#if IS_PRR_MANAGER_RCFG_TEST
	PM_record(Xil_In32(GLOBAL_TMR_BASEADDR+GTIMER_COUNTER_LOWER_OFFSET));
	PRRC_WriteReg(0,1);
#endif

	xil_printf("(HWManagerMain) suspend \n\r");
	sys_suspend((mword)HWManager_Main_Entry);

	// Should not get here!
	while(1);
}


//void HW_Task_Manager_Boot()
//{
//	int x = 0;
//	if(x = XDcfg_TransferBitfile(&XDcfg_0, PARTIAL_RECONFIG_ADD_ADDR, PARTIAL_BINFILE_LEN ))
//			xil_printf("PCAP Error (%d)!  \n\r", x);
//	print("000000000000!  \n\r");
//	if(x = XDcfg_TransferBitfile(&XDcfg_0, PARTIAL_RECONFIG_SUB_ADDR, PARTIAL_BINFILE_LEN ))
//			print("PCAP Error!  \n\r");
//	print("11111111111!  \n\r");
//}

NORETURN
void HW_Task_Manager_Bootloader()
{
	unsigned long *p;
	unsigned long *q;
	unsigned long *r;
	int status = 0;

	//sys_irq_disable();
	//VM_IRQ_Dis();


	print("\n\rUser: Boot HW Task Manager \n\r");

	XDcfg_Initialize(&XDcfg_0, XPAR_XDCFG_0_DEVICE_ID);
	print("DevCfg initialization done.\n\r");



	//print("Insert FPGA mapping\n\r");
	//sys_insert_fpga_mapping(2, AXIGP_BASE_VIRT_ADDR, AXIGP_BASE_PHYS_ADDR);
	//sys_fpga_page_rw(2, AXIGP_BASE_VIRT_ADDR);








	status = XDcfg_TransferBitfile(&XDcfg_0, PARTIAL_RECONFIG_ADD_ADDR, PARTIAL_BINFILE_LEN );
	if (status != XST_SUCCESS)
					{
					xil_printf("PCAP Error (%d)!  \n\r", status);
					while(1);
					}
	xil_printf("Adder loaded in PL \n\r");



		status = XDcfg_TransferBitfile(&XDcfg_0, PARTIAL_RECONFIG_SUB_ADDR, PARTIAL_BINFILE_LEN );
		if (status != XST_SUCCESS)
							{
							xil_printf("PCAP Error (%d)!  \n\r", status);
							while(1);
							}
		xil_printf("sub loaded in PL \n\r");



	status = XDcfg_TransferBitfile(&XDcfg_0, PARTIAL_RECONFIG_SUB_ADDR, PARTIAL_BINFILE_LEN );
		if (status != XST_SUCCESS)
							{
							xil_printf("PCAP Error (%d)!  \n\r", status);
							while(1);
							}
		xil_printf("sub loaded in PL \n\r");



		status = XDcfg_TransferBitfile(&XDcfg_0, PARTIAL_RECONFIG_ADD_ADDR, PARTIAL_BINFILE_LEN );
			if (status != XST_SUCCESS)
							{
							xil_printf("PCAP Error (%d)!  \n\r", status);
							while(1);
							}
			xil_printf("Adder loaded in PL \n\r");

	sys_hwmgr_register();

	/* Add mapping to access PRR Monitor registers , the VM id of hw manager is 2 */


	print("HWTaskIndexTable Init \n\r");
	HWTaskIndexTable_Init();
	/* PL interrupt Initialization	*/
	HWManager_Irq_init();


	print("IFTable Init \n\r");
	IF_init();



#if PRR_MONITOR_IN_SW
	PRMonitor_init();
#endif





	/* Set up the PR_HOST_LIST register in PR Controller */
	//////////////PR_HOST_LIST_init();

	// irq enable
	//VM_IRQ_En();

	//HW_Task_Manager_Boot();
	//HW_Task_Manager();

	/*int x = 0;
	//while(1){
	XTime_SetTime(0);
	if(x=XDcfg_TransferBitfile(&XDcfg_0, 0x10000, 0xc350 ))
					xil_printf("PCAP Error (%d)!  \n\r", x);
	xil_printf("%d ",Xil_In32(GLOBAL_TMR_BASEADDR+GTIMER_COUNTER_LOWER_OFFSET));
	while(x < 33333333){
		x++;
	}
	}*/

#if IS_PRR_MANAGER_ASSIGN_TEST
	PRRC_WriteReg(PR_SEARCH_RESULT_OFFSET, (0<<15)|(assign<<8)|1);
#endif
#if IS_PRR_MANAGER_PREEMT_TEST
	//////////////////PRRC_WriteReg(PR_SEARCH_RESULT_OFFSET, (0<<15)|(preempt<<8)|1);
#endif
#if IS_PRR_MANAGER_RCFG_TEST
	PRRC_WriteReg(PR_SEARCH_RESULT_OFFSET, (1<<15)|(assign<<8)|1);
#endif

	print("\n\rUser: Boot Over\n\r");


	sys_suspend((mword)HWManager_Main_Entry);

	while(1);
}

//void HW_Task_Manager(int Option)
//{
//	//XDcfg_Initialize(&XDcfg_0, XPAR_XDCFG_0_DEVICE_ID);
//		//print("DevCfg initialization done.\n\r");
//
//	int x = 0;
//	int status = 0;
//
//	while(x < 33333333){
//			x++;
//			//xil_printf("xxxxxxxxxxx (%d)!  \n\r", x);
//		}
//	//*(unsigned long int*)(HW_DEV0 + 4) = 0x1;
//	//xil_printf("%d ",Option);
//	 switch(Option){
//	 	 case 0:
//	 		print ("USER: Task 1. \n\r");
//	 		if(status = XDcfg_TransferBitfile(&XDcfg_0, HW_DEV0, PARTIAL_BINFILE_LEN ))
//	 			print ("0	PCAP Error  \n\r");
//	 			//xil_printf("0	PCAP Error (%d)!  \n\r", status);
//	 		//xil_printf("0000000000 (x=%d) (status=%d)! \n\r", x, status);
//	 		break ;
//
//	    case 1:
//	    	print ("USER: Task 2. \n\r");
//	    	if(status = XDcfg_TransferBitfile(&XDcfg_0, HW_DEV1, PARTIAL_BINFILE_LEN ))
//	    		print ("1s	PCAP Error  \n\r");
//	    		//xil_printf("1	PCAP Error (%d)!  \n\r", status);
//	    	//xil_printf("1111111111 (x=%d) (status=%d)! \n\r", x , status);
//	    	break ;
//
//	    default :
//	    	//while(x < 33333333){
//
//	    //	/*if(XDcfg_TransferBitfile(&XDcfg_0, HW_DEV1 /*PARTIAL_RECONFIG_SUB_ADDR*/, PARTIAL_BINFILE_LEN))
//		/*	    			xil_printf("2	PCAP Error (%d)!  \n\r", x);
//	    	xil_printf("xxxxxxxxxxx (%d)!  \n\r", x);*/
//	    	break;
//	    }
//}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Emulation of PRR in SW
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#if PRR_MONITOR_IN_SW == 1

void PR_SEARCH_SOLUTION(int VMID, int DevID, int PRIO)
{
// Search a solution for a DevID assignment to a PRR
// Modifies the contents of specific virtual registers of the PRR
// The result is stored in the SEARCH_RESULT register
// PR_SEARCH_RESULT_OFFSET
// 	|Byte 3	|Byte 2	|Byte 1		|Byte 0	|
// 	|				|15|14	   8|7	   0|
// 	|				|R | Method	|PRID	|


IF_entry *p;

Sw_PRR_Monitor.PR_SEARCH_CMD_REG=(((VMID<<16)|(DevID<<8)|PRIO) & 0xffffff);

int i=0;
int count_busy=0;
int value=0;

xil_printf("(PR_SEARCH_SOLUTION) VMID= %d , DevID= %d, PRIO= %d \n \r", VMID, DevID, PRIO);

// update the status of the PRTable with the status of the interface
//
for (i=0 ; i< PRR_NUM;i++)
{
	p=PRClientTable[i];
	xil_printf("p= %x\n\r",PRClientTable[i]);
	if (p==NULL) Sw_PRR_Monitor.PRTable[i].Status = IDLE;
	else
	{
	Sw_PRR_Monitor.PRTable[i].Status = PRClientTable[i]->Status;
	Sw_PRR_Monitor.PRTable[i].DevID = PRClientTable[i]->DevID;
	}
xil_printf("(PR_SEARCH_SOLUTION) Sw_PRR_Monitor.PRTable[%d].Status = %d \n\r",i,Sw_PRR_Monitor.PRTable[i].Status);
}

// look for all available PR
for (i=0 ; i< PRR_NUM;i++)
{
if ((Sw_PRR_Monitor.PRTable[i].Status) == BUSY) count_busy++ ;

if (count_busy == PRR_NUM)
	{

	// RESULT_REG.Method = unavailable // all PRs are busy, we need to wait
	// RESULT_REG.R = 0
	// RESULT_REG. PRID =0xFF
	Sw_PRR_Monitor.PR_SEARCH_RESULT_REG = 0X00FF; // all field are zero except PRID
	xil_printf("(PR_SEARCH_SOLUTION) all PRs are busy \n\r");
	xil_printf("(PR_SEARCH_SOLUTION) PR_SEARCH_RESULT_REG  %x \n\r",Sw_PRR_Monitor.PR_SEARCH_RESULT_REG);
	}

if (Sw_PRR_Monitor.PRTable[i].Status == IDLE)
	{
	if (Sw_PRR_Monitor.PRTable[i].DevID == DevID) // We found an available devID already implemented
		{
		// RESULT_REG.R= FALSE (=0)
		// RESULT_REG.Method = assign (=1) => bit8 =1
		// RESULT_REG.PRID= PRTable[i].PRID
		Sw_PRR_Monitor.PRTable[i].PRID=i;

		value=i & 0xFF;
		value |= (1 << 8);
		Sw_PRR_Monitor.PR_SEARCH_RESULT_REG = value;
		xil_printf("(PR_SEARCH_SOLUTION) available device found \n\r");
		xil_printf("(PR_SEARCH_SOLUTION) PR_SEARCH_RESULT_REG  %x \n\r",Sw_PRR_Monitor.PR_SEARCH_RESULT_REG);

		}
	else // We found a PR that is available but no devID in it
		{
		// RESULT_REG.R= TRUE
		// RESULT_REG.Method = assign
		// RESULT_REG.PRID= PRTable[i].PRID

		Sw_PRR_Monitor.PRTable[i].PRID=i;
		value=i & 0xFF; //PRID =i
		value = 1 << 15 ; // R=1
		value= value | (1 << 8); // Assign =1

		Sw_PRR_Monitor.PR_SEARCH_RESULT_REG = value;
		xil_printf("(PR_SEARCH_SOLUTION) available PR found \n\r");
		xil_printf("(PR_SEARCH_SOLUTION) PR_SEARCH_RESULT_REG  %x \n\r",Sw_PRR_Monitor.PR_SEARCH_RESULT_REG);
		}
	}

	}
}


mword PRRC_ReadReg(int offset)
{
return (Sw_PRR_Monitor. PR_SEARCH_RESULT_REG);
}



#endif



