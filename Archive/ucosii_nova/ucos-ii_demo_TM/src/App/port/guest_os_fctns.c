/* guest_os_fctns.c
 *
 *  Created on: 9 juil. 2014
 *      Author: XIATAN
 */
#include"syscall_list.h"
#include"guest_os_parameters.h"

#include <cpu.h>
#include <csp.h>
#include <os_csp.h>
#include <os_cpu.h>
#include <os_cfg.h>

#include"guest_os_vpsr.h"
#include"../uC-CSP/MCU/csp_types.h"

extern VM_PSR vpsr;

/*
 * CPU Interrupt Enable/Disable functions will generate system call to nova kernel.
 * by masking all IRQ/FIQ exceptions
 *
 * This function is used and ONLY used at the initialization stage of ucosii.
 *
 * ATTENTION: Once IRQ/FIQ is masked, clock tick will be ignored. This may cause
 * 	the monopoly use of CPU
 *
 * 	---- Xia Tian
 */

/*********************************************************************************************************
*                                     ORIGINAL CRITICAL SECTION FUNCTIONS
*
* Description : Disable/Enable interrupts by preserving the state of interrupts.  Generally speaking, the
*               state of the interrupt disable flag is stored in the local variable 'cpu_sr' & interrupts
*               are then disabled ('cpu_sr' is allocated in all functions that need to disable interrupts).
*               The previous interrupt state is restored by copying 'cpu_sr' into the CPU's status register.
*
* Prototypes  : CPU_SR  CPU_SR_Save   	 (void);
* 						OS_CPU_SR_Save   (void);
*               void    CPU_SR_Restore	 (CPU_SR  cpu_sr);
*               		OS_CPU_SR_Restore(CPU_SR  cpu_sr)
*
*  	All critial enter/exit functions, namely:
*  		OS_ENTER_CRITICAL;
*  		OS_EXIT_CRITICAL;
*  		CPU_CRITICAL_ENTER;
*  		CPU_CRITICAL_EXIT;
*  	are implemented by setting the IRQ/FIR mask bits in CPSR so that all IRQs are masked
*
*  	---- Xia Tian
*
***********************************************************************************************************/

void guest_CPU_IntDis(){ OS_CPU_SR_IRQ_Dis(); }
void guest_CPU_IntEn(){ OS_CPU_SR_IRQ_En(); }

void guest_ICacheEnable(){ sys_icache_enable(); }
void guest_DCacheEnable(){ sys_dcache_enable(); }

void guest_ICacheDisable(){ sys_icache_disable(); }
void guest_DCacheDisable(){ sys_dcache_disable(); }


void guest_IRQ_Register(void (*ucos_irs_entry)(), unsigned int vpst_ptr){
	sys_virq_ctrl(0, (unsigned long)ucos_irs_entry, vpst_ptr);
}

int guest_IRQ_Acknowledge(){
	return vpsr.VACK;
	//return sys_virq_ctrl(5,0,0);	//Return the current interrupt id
}

void guest_CSP_IntClr(unsigned short int_ctrl, unsigned short src_nbr){
	vpsr.VEOI[src_nbr] = 1;
	//sys_virq_ctrl(6,src_nbr,0);
	//xil_printf("IRQ = %d , M=%d, E=%x\n\r", src_nbr, *(int *)(0xF8F00104), *(int *)(0xF8F01104));
}



/*
 * Acknowlege supervisor with:
 * 1. the interrupt handler entry address for virtual timer (ucos_irs_entry)
 * 2. the frequency of virtual timer
 */

void guest_OS_Timer_Register(int freq)
{
	sys_vtimer_ctrl(0, freq, 0);
}

void guest_OS_Timer_Disable()
{
	sys_vtimer_ctrl(1,0,0); //Enable virtual timer
}


void guest_OS_Timer_Enable()
{
	sys_vtimer_ctrl(2,0,0); //Enable virtual timer
}


int guest_OS_Mbox_Post(int box_id, unsigned long message)
{
	return sys_mbox_post(box_id, message);
}

int guest_OS_Mbox_Read(int box_id, unsigned long *message)
{
	return sys_mbox_read(box_id, message);
}

unsigned long guest_OS_GetPhysAddr(unsigned long virt)
{
	return sys_address_v2p(virt);
}

extern int int_flag;
void guest_idle(){
#if IS_RTOS
	//print(" RTOS IDLE ");
#if IS_TASK_RELEASE_TEST
	int_flag = 0;
#endif
	asm volatile ("swi 28" :::"cc");
#endif
}

