/*
 * hwmanager_irq.cc
 *
 *  Created on: 28 sept. 2015
 *      Author: XIATAN
 */

#include "HWManager.h"

#include "../include/irq.h"
#include "../include/syscall_list.h"
#include "../include/compiler.h"
#include "../include/vpsr.h"
#include "performance.h"

extern IF_entry* Current_RCPG;
extern IF_entry* IFIndexTable[MAX_VM_NUM][MAX_DEVICE_NUM];
extern IF_entry* PRClientTable[MAX_PRR_NUM];
extern IntHandler HandlerTable[95];
extern Solution s_empty ;

extern void IF_Disconnect(int PR_id);
extern void IF_Connect(IF_entry *p, int PR_id);

VM_PSR hwmgr_vpsr;
mword *hwmgr_vpsr_cpsr = &hwmgr_vpsr.VCPSR_NA;

mword HWManager_IRQ_STK[512];
mword *HWManager_IRQ_STK_top = &(HWManager_IRQ_STK[511]);


/*
 * 	Handling PCAP Reconfiguration is over:
 *		1) Clear PCAP_OVER Interrupt
 *		2) Continue whet's left for Assign:
 *			Link the PR to IF
 *			Change the PRR state to HOLD
 *			Clear solution
 *		3) Clear Current_RCPG
 *		4) Insert IVC_DEV_READY to suspended VM		 */
void Int_RCFG_OVER_Handler(){
#if !IS_PRR_MANAGER_RCFG_TEST
	// Clear PCAP int
	Xil_Out32(DevCfg_INT_STS, 1<<D_P_DONE_INT_BIT);
#endif

	IF_Connect(Current_RCPG, Current_RCPG->s.PR_id);
	PRR_STATE_HOLD_SET(Current_RCPG->s.PR_id);
	Current_RCPG->s = s_empty;
	Current_RCPG = 0;
	sys_IVC_Send(Current_RCPG->VMID,IVC_DEV_READY, Current_RCPG->DevID);
}

/*
 * 	Handling Preempted PR STOP: One PR is successfully preempted (stopped)
 * 		1) Get the Information of this solution by reading PR_STOP_INT
 * 		2) Clear the PL_PR_STOP Interrupt
 * 		3) Use IPC to acknowledge the predecessor VM that its device is preempted
 * 		4) Change the IF solution to successor IF Method.assign
 * 		5) Assign the PR to IF by Run_Solution()
 * 		6) If Run_Solution() returns NO-WAIT(0), then insert IVC_DEV_READY to VM
 * 		7) Otherwise, quit HWManager directly	*/
void Int_PL_PR_STOP_Handler(){
	mword int_reg;
	IF_entry *p_predecessor;
	IF_entry *p_successor;
	int successor_VMID, successor_DevID, PRID;

	int_reg = PRRC_ReadReg(PR_STOP_INT_OFFSET);
	PRRC_WriteReg(PR_STOP_INT_OFFSET, 0);

	successor_VMID  = int_reg >> 24;
	successor_DevID = (int_reg >> 16) & 0xff;
	PRID = (int_reg >> 8) & 0xff;

	p_predecessor = PRClientTable[PRID];
	sys_IVC_Send(p_predecessor->VMID,IVC_DEV_PREEMPTED, p_predecessor->DevID);

	p_successor = IFIndexTable[successor_VMID][successor_DevID];
	p_successor->s.M = assign;
	if(!Run_Solution(p_successor))
		sys_IVC_Send(p_successor->VMID,IVC_DEV_READY, p_successor->DevID);

}

/*
 * 	Handling New Solution Interrupt: a new solution is found
 * 		1) Get the Information of this solution by reading PR_SOLUTION_INT
 * 		2) Clear the Solution Interrupt
 * 		3) Assign the Solution to IF.s
 * 		4) Deal with the solution by Run_Solution()
 * 		4) If Run_Solution() returns NO-WAIT(0), then insert IVC_DEV_READY to VM
 * 		5) Otherwise, quit HWManager directly	*/
void Int_PL_NEW_SOLUTION_Handler(){
	mword int_reg;
	IF_entry *p;
	int VM_id, DEV_id;

	int_reg = PRRC_ReadReg(PR_NEW_SOLUTION_INT_OFFSET);
	PRRC_WriteReg(PR_NEW_SOLUTION_INT_OFFSET, 0);
	VM_id  = int_reg >> 24;
	DEV_id = int_reg >> 16 & 0xff;
	p = IFIndexTable[VM_id][DEV_id];
	p->s.PR_id 	= (int_reg >> 1) & 0x7f;
	p->s.M 		= (int_reg >> 8) & 0x7f;
	p->s.Reconf = (int_reg >>15) & 0x1;

	if(!Run_Solution(p))
		sys_IVC_Send(p->VMID,IVC_DEV_READY, p->DevID);
}

NORETURN
void HWManager_IRQ_Handler() asm ("HWManager_IRQ_Handler");
void HWManager_IRQ_Handler(){
	int irq_id;

#if IS_PRR_MANAGER_PREEMT_TEST | IS_PRR_MANAGER_RCFG_TEST
	XTime_SetTime(0);
#endif

	irq_id = hwmgr_vpsr.VACK;
	//xil_printf("(%d) \n\r", irq_id);
	HandlerTable[irq_id]();
	hwmgr_vpsr.VEOI[irq_id] = 1;

	*hwmgr_vpsr_cpsr &=0xffffff7f;

#if IS_PRR_MANAGER_PREEMT_TEST
	PM_record(Xil_In32(GLOBAL_TMR_BASEADDR+GTIMER_COUNTER_LOWER_OFFSET));
	IF_Disconnect(1);
#endif

#if IS_PRR_MANAGER_RCFG_TEST
	//PM_record(Xil_In32(GLOBAL_TMR_BASEADDR+GTIMER_COUNTER_LOWER_OFFSET));
	IF_Disconnect(1);
	if(!IFIndexTable[3][1])
		IFIndexTable[3][1] = IF_alloc(3, 1, 1);
	IF_Connect(IFIndexTable[3][1], 1);
#endif

	sys_suspend((mword)HWManager_Main_Entry);
	while(1);
}

/*
 * 	HWManager interrupts initialization:
 * 		1) Register IRQ entry to microkernel
 * 		2) Unmask PCAP Done INT
 * 		3) Reguster all interrupt handlers
 * 		4) Enable all HWManager interrupts to receive IRQs from VM worlds
 * 		5) Mask all IRQs so that these IRQs won't interrupt HWManager
 */
void HWManager_Irq_init(){
	/* Register the shared memory to VMM */
	guest_IRQ_Register(HWManager_IRQ_Entry, (unsigned int)&hwmgr_vpsr);

	/* Unmask PCAP Done INT	*/
	//Xil_Out32(DevCfg_INT_MASK, ~(1<<D_P_DONE_INT_BIT));

	irq_handler_reg(RCFG_OVER, Int_RCFG_OVER_Handler);
	irq_handler_reg(PL_PR_STOP, Int_PL_PR_STOP_Handler);
	irq_handler_reg(PL_NEW_SOLUTION, Int_PL_NEW_SOLUTION_Handler);

#if IS_PRR_MANAGER_RCFG_TEST
	irq_handler_reg(PL_PR_STOP, Int_RCFG_OVER_Handler);
#endif

	guest_Irq_En(RCFG_OVER);
	guest_Irq_En(PL_PR_STOP);
	guest_Irq_En(PL_NEW_SOLUTION);

	//guest_EXIT_CRITICAL();
	*hwmgr_vpsr_cpsr &=0xffffff7f;
}


