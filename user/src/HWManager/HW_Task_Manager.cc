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
//#include "../bsp/include/xparameters_user.h"
#include "performance.h"

#include "../include/syscall_list.h"
#include "../include/compiler.h"
#include "../include/irq.h"
#include "../include/vpsr.h"

#include "HWManager.h"
//#include <stdlib.h>
//#define HW_DEV0 		0x10001000
#define HW_DEV1 		0x10002000

#if IS_PRR_MANAGER_RCFG_TEST
int False_PCAP_Transfer(XDcfg *Instance, u32 StartAddress, u32 WordLength){
	//xil_printf("addr %x size %x", StartAddress, WordLength);
	return StartAddress + WordLength;
};
#endif

extern mword *hwmgr_vpsr_cpsr;

BitFile_entry* BitFileIndexTable[MAX_PRR_NUM][MAX_DEVICE_NUM] = {
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0}
};

IF_entry* IFIndexTable[MAX_VM_NUM][MAX_DEVICE_NUM]={
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0}
};

IF_entry* PRClientTable[MAX_PRR_NUM];

HWM_entry* PRTable[MAX_PRR_NUM];

IF_entry* Current_RCPG;

XDcfg XDcfg_0;

Solution s_empty = {false,nonvalid,0};

mword HWManager_STK[512];

mword *main_stack_top = &HWManager_STK[511];

IF_entry* IF_alloc(int vm_id, int dev_id, int prio){
	IF_entry* p;// = malloc(sizeof(IF_entry));

	p->VMID = vm_id;
	p->DevID= dev_id;
	p->IFID = (vm_id-3)*MAX_VM_NUM + dev_id; // First OS is VM3, this is temporary
	p->PRID = 0xff;
	p->PRIO = prio;
	p->s = s_empty;

	/* Insert the IF mapping page to VM as Read-Only page	*/
	sys_insert_fpga_mapping(vm_id, dev_id * PR_IF_SIZE + HW_DEV0, PR_IF0 + p->IFID * PR_IF_SIZE);

	return p;
}



void PR_HOST_LIST_init(){
	mword temp = 0;
	int shift = 0;

	for(int i=0; i<MAX_DEVICE_NUM; i++)
		for(int j=0; j<MAX_PRR_NUM; j++){
			if(BitFileIndexTable[j][i])
				temp |=  1<<shift;
			shift++;
		}
	//PRRC_WriteReg(PR_HOST_LIST_OFFSET, temp);
}

/*
 *  Check if there is suitable PR for the IF by:
 *  	1) Giving VM, Device, Priority to PR Controller to find a solution
 *  	2) Get result (solution)
 */
void check_available(IF_entry *p){
	mword PR_Solution;

	PR_SEARCH_SOLUTION(p->VMID, p->DevID, p->PRIO);
	PR_Solution = PRRC_ReadReg(PR_SEARCH_RESULT_OFFSET);

	p->s.PR_id 	= PR_Solution & 0xff;
	p->s.M 		= (PR_Solution >> 8) & 0x7f;
	p->s.Reconf = PR_Solution >> 15;
	print ("	33333 \n\r");
}


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
		p->PRID = 0xff;
		PRClientTable[PR_id] = 0;
		PRR_DISCONNECT(PR_id);
		sys_fpga_page_ro(p->VMID, HW_DEV0 + p->DevID * PR_IF_SIZE);
	}
}

/*
 *	Connect the IF with target PR, including:
 *	 	1) Set IF.PRID
 *		2) Set PRClientTable[PRID]
 *	 	3) Use PRR_IF_CONNECT command to connect PR with IF
 *	 	4) Set the connected IF page as read-write in VM's page table
 */
void IF_Connect(IF_entry *p, int PR_id){
	p->PRID = PR_id;
	PRClientTable[PR_id] = p;
	PRR_IF_CONNECT(p->VMID, p->DevID, p->PRIO, PR_id);
	sys_fpga_page_rw(p->VMID, HW_DEV0 + p->DevID * PR_IF_SIZE);
}


/*
 * 	Implement the solution given by the FPGA side.
 * 	This function returns 0 ONLY when the target device is READY to go.
 * 	Otherwise, it returns 1 to make VM wait.
 */
int Run_Solution(IF_entry *p){
	BitFile_entry *bitfile;

	switch(p->s.M){
	/*
	 * Method.unavailable means no appropriate PR for now.
	 * Request is suspended until a solution is found by PR controller
	 * 	1) Return 1 (WAIT)
 	 */
	case unavailable:
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
		IF_Disconnect(p->s.PR_id);
		if(p->s.Reconf == true){
			bitfile = BitFileIndexTable[p->s.PR_id][p->DevID];
#if IS_PRR_MANAGER_RCFG_TEST
			if(!False_PCAP_Transfer(&XDcfg_0, bitfile->Addr, bitfile->Size ))
				print("PCAP Error!  \n\r");
#else
			if(XDcfg_TransferBitfile(&XDcfg_0, bitfile->Addr, bitfile->Size ))
				print("PCAP Error!  \n\r");
#endif
			PRR_STATE_RCFG_SET(p->s.PR_id);
			Current_RCPG = p;
			return 1;
		}
		else{
			IF_Connect(p, p->s.PR_id);
			p->s = s_empty;
			PRR_STATE_HOLD_SET(p->s.PR_id);
		}
		break;
	/*
	 * Method.preempt means to stop low-priority non-IDLE PR and assign to IF:
	 * 	1) Give STOP command to PR Controller
	 * 	2) Return 1 (WAIT)
	 */
	case preempt:
		PR_STOP(p->s.PR_id);
		return 1;

	case nonvalid:
	default:
		print("ERROR: Undefined Solution Method! \n\r");
	}

	return 0;
}


/*	Get HW Task information:
 *  R0: Virtual Machine ID
 *  R1: Device Interface Address
 *  R2: VM Priority
 */
NORETURN
void HWManager_Main_IF(int VM_id, mword Dev_Addr, int prio) asm ("HWManager_Main_IF");
void HWManager_Main_IF(int VM_id, mword Dev_Addr, int prio)
{
	static int Dev_id;
	static IF_entry *p_IF;

	//mtgpr(13, &HWManager_STK[511]); //Reset Stack pointer for every invoking

#if IS_PRR_MANAGER_ASSIGN_TEST | IS_PRR_MANAGER_PREEMT_TEST | IS_PRR_MANAGER_RCFG_TEST
	XTime_SetTime(0);
#endif

	// Identify the device ID according to the trapped address
	Dev_id = (Dev_Addr - HW_DEV0)/PR_IF_SIZE;

	//xil_printf("HWManager Invoked: %d (VM=%d, Pr=%d) \n\r",Dev_id,VM_id,prio);

	if(!IFIndexTable[VM_id][Dev_id]) // Check if the IF of (VM, Device) exists
		IFIndexTable[VM_id][Dev_id] = IF_alloc(VM_id, Dev_id, prio);

	p_IF = IFIndexTable[VM_id][Dev_id];

	/* If this IF is still linked with a PR, then this is an error.
	 * Otherwise, search for PRs for an appropriate solution */
	if(p_IF->PRID != 0xff){
		print("Error: IF was not correctly cleared (unlinked) \n\r");
		while(1);
	}
	// If this IF is now having a valid solution, means the solution is not over
	else if(p_IF->s.M != nonvalid){
		sys_IVC_Send(p_IF->VMID, IVC_DEV_WAIT, p_IF->DevID);
		print("Wait more \n\r");
	}
	else{
		check_available(p_IF);
		if(Run_Solution(p_IF))
		/* Run_Solution() returning 1 means waiting  */
			sys_IVC_Send(p_IF->VMID, IVC_DEV_WAIT, p_IF->DevID);
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

	sys_suspend((mword)HWManager_Main_Entry);

	// Should not get here!
	while(1);
}



/*	Get HW Task information:
 *  R0: Task ID
 *  R1: Device ID
 *  R2: Task Priority
 */
NORETURN
void HWManager_Main(int VM_id, int Dev_id, int prio) asm ("HWManager_Main");
void HWManager_Main(int VM_id, int Dev_id, int prio)
{

	static IF_entry *p_IF;

#if IS_PRR_MANAGER_ASSIGN_TEST | IS_PRR_MANAGER_PREEMT_TEST | IS_PRR_MANAGER_RCFG_TEST
	XTime_SetTime(0);
#endif

	// Check HW Task Index Table -- if the target HW IP exists
	if(!IFIndexTable[VM_id][Dev_id]) // Check if the IF of (VM, Device) exists
		IFIndexTable[VM_id][Dev_id] = IF_alloc(VM_id, Dev_id, prio);

	p_IF = IFIndexTable[VM_id][Dev_id];

	/* If this IF is still linked with a PR, then this is an error.
	 * Otherwise, search for PRs for an appropriate solution */
	if(p_IF->PRID != 0xff){
		print("Error: IF was not correctly cleared (unlinked) \n\r");
		while(1);
	}
	// If this IF is now having a valid solution, means the solution is not over
	else if(p_IF->s.M != nonvalid){
		sys_IVC_Send(p_IF->VMID, IVC_DEV_WAIT, p_IF->DevID);
		print("Wait more \n\r");
	}
	else{
		check_available(p_IF);
		if(Run_Solution(p_IF))
		/* Run_Solution() returning 1 means waiting  */
			sys_IVC_Send(p_IF->VMID, IVC_DEV_WAIT, p_IF->DevID);
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

	sys_suspend((mword)HWManager_Main_Entry);

	// Should not get here!
	while(1);
}


void HW_Task_Manager_Boot()
{
	int x = 0;
	if(x = XDcfg_TransferBitfile(&XDcfg_0, PARTIAL_RECONFIG_ADD_ADDR, PARTIAL_BINFILE_LEN ))
			xil_printf("PCAP Error (%d)!  \n\r", x);
	print("000000000000!  \n\r");
	if(x = XDcfg_TransferBitfile(&XDcfg_0, PARTIAL_RECONFIG_SUB_ADDR, PARTIAL_BINFILE_LEN ))
			print("PCAP Error!  \n\r");
	print("11111111111!  \n\r");
}

NORETURN
void HW_Task_Manager_Bootloader()
{
	//sys_irq_disable();
	//VM_IRQ_Dis();

	print("\n\rUser: Boot HW Task Manager \n\r");

	XDcfg_Initialize(&XDcfg_0, XPAR_XDCFG_0_DEVICE_ID);
	print("DevCfg initialization done.\n\r");

	sys_hwmgr_register();

	/* Add mapping to access PRR Monitor registers , the VM id of hw manager is 2 */
	sys_insert_fpga_mapping(2, AXIGP_BASE_VIRT_ADDR, AXIGP_BASE_PHYS_ADDR);
	sys_fpga_page_rw(2, AXIGP_BASE_VIRT_ADDR);

	/* PL interrupt Initialization	*/
	HWManager_Irq_init();

	/* Set up the PR_HOST_LIST register in PR Contromller */
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

void HW_Task_Manager(int Option)
{
	//XDcfg_Initialize(&XDcfg_0, XPAR_XDCFG_0_DEVICE_ID);
		//print("DevCfg initialization done.\n\r");

	int x = 0;
	int status = 0;

	while(x < 33333333){
			x++;
			//xil_printf("xxxxxxxxxxx (%d)!  \n\r", x);
		}
	//*(unsigned long int*)(HW_DEV0 + 4) = 0x1;
	//xil_printf("%d ",Option);
	 switch(Option){
	 	 case 0:
	 		print ("USER: Task 1. \n\r");
	 		if(status = XDcfg_TransferBitfile(&XDcfg_0, HW_DEV0, PARTIAL_BINFILE_LEN ))
	 			print ("0	PCAP Error  \n\r");
	 			//xil_printf("0	PCAP Error (%d)!  \n\r", status);
	 		//xil_printf("0000000000 (x=%d) (status=%d)! \n\r", x, status);
	 		break ;

	    case 1:
	    	print ("USER: Task 2. \n\r");
	    	if(status = XDcfg_TransferBitfile(&XDcfg_0, HW_DEV1, PARTIAL_BINFILE_LEN ))
	    		print ("1s	PCAP Error  \n\r");
	    		//xil_printf("1	PCAP Error (%d)!  \n\r", status);
	    	//xil_printf("1111111111 (x=%d) (status=%d)! \n\r", x , status);
	    	break ;

	    default :
	    	//while(x < 33333333){

	    //	/*if(XDcfg_TransferBitfile(&XDcfg_0, HW_DEV1 /*PARTIAL_RECONFIG_SUB_ADDR*/, PARTIAL_BINFILE_LEN))
		/*	    			xil_printf("2	PCAP Error (%d)!  \n\r", x);
	    	xil_printf("xxxxxxxxxxx (%d)!  \n\r", x);*/
	    	break;
	    }
}
