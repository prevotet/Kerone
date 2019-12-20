/*
 * syscall_list.cc
 *
 *  Created on: 13 mars 2014
 *      Author: XIATAN
 */

#include "syscall.h"
#include "performance.h"
#include "guest_os_fctns.h"
#include "guest_os_parameters.h"
/*
 *  This is the list of system calls:
 *  ______________________________________________________________________________________________
 *	function			call_num	w1					w2					w3			return
 *  ----------------------------------------------------------------------------------------------
 *	sys_create_ec		0			thread entry addr	thread stack top	priority	void
 *  ----------------------------------------------------------------------------------------------
 *	sys_yield			1			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_irq_enable		2			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_dcache_disable	3			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_icache_disable	4			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_dcache_enable	5			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_icache_enable	6			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_irq_disable		7			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_virq_ctrl		8				op:
 *  								0(register	)		IRQ entry address	vpsr
 *  								1(disable	)		IRQ id				unused
 *  								2(enable	)		IRQ id				unused
 *  								5(read ACK)			unused				unused		IRQ id
 *  								6(write EOI)		IRQ id				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_remap			9			phys addr			unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_insert_mapping	10			phys addr			virt addr			size		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_vtimer_ctrl 	11				op:
 *  								0 (register	)		frequency			void		void
 *									1 (disable	)  		void				void		void
 *									2 (enable	)		void				void		void
 *	----------------------------------------------------------------------------------------------
 *  sys_create_messagebox	12		number of boxes		unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *	sys_mbox_post		13			box id				message				unused		status
 *	----------------------------------------------------------------------------------------------
 *	sys_mbox_read		14			box id				message pointer		unused		status
 */

void sys_yield()
{
	syscall (1, 0, 0, 0);
}


//void sys_irq_enable()
//{
//	syscall (2, 0, 0, 0);
//}

void sys_dcache_disable()
{
	syscall (3, 0, 0, 0);
}

void sys_icache_disable()
{
	syscall (4, 0, 0, 0);
}

void sys_dcache_enable()
{
	syscall (5, 0, 0, 0);
}

void sys_icache_enable()
{
	syscall (6, 0, 0, 0);
}

//void sys_irq_disable()
//{
//	syscall (7, 0, 0, 0);
//}

int sys_virq_ctrl(int op, unsigned long arg1, unsigned int arg2)
{
	return syscall(8, op, arg1, arg2);
}

void sys_vtimer_ctrl(int op, int arg1, int arg2)
{
	syscall(11, op, arg1, arg2);
}

int sys_mbox_post(int box_id, unsigned long message)
{
	return syscall(13, box_id, message, 0);
}

int sys_mbox_read(int box_id, unsigned long *message)
{
	return syscall(14, box_id, message, 0);
}

unsigned long sys_address_v2p(unsigned long virt_addr)
{
	return syscall(26, virt_addr, 0, 0);
}

#if IS_TASK_GENERAL_TEST
void sys_void(){
	guest_CPU_IntDis();
	Xil_Time_SetTime(0);
	syscall	(99, 0, 0, 0);
	syscall(99, *(volatile u32 *)(GLOBAL_TMR_BASEADDR + GTIMER_COUNTER_LOWER_OFFSET), 0, 0);
	guest_CPU_IntEn();
}
#endif
