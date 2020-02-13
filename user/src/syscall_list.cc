/*
 * syscall_list.cc
 *
 *  Created on: 13 mars 2014
 *      Author: XIATAN
 */

#include "performance.h"
#include "syscall_list.h"
#include "syscall.h"
#include "types.h"
#include "print.h"

/*
 *  This is the list of system calls:
 *  ______________________________________________________________________________________________
 *	function			call_num	w1					w2					w3			return
 *  ----------------------------------------------------------------------------------------------
 *	sys_create_ec		0			thread entry addr	thread stack top	priority	void
 *  ----------------------------------------------------------------------------------------------
 *	sys_yield			1			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  X sys_irq_enable	2			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_dcache_disable	3			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_icache_disable	4			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_dcache_enable	5			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_icache_enable	6			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  X sys_irq_disable	7			unused				unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_virq_ctrl		8			0 					irs_entry			vpsr		void
 *  								1 disable irq		irq id				--			--
 *  								2 enable irq		irq id				--			--
 *  								5 vIRQ ACK 			unused				--			vGIC_ACK
 *  								6 Virq EOI			irq id				--			void
 *  ----------------------------------------------------------------------------------------------
 *  sys_remap			9			phys addr			unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_insert_mapping	10			phys addr			virt addr			size		void
 *  ----------------------------------------------------------------------------------------------
 *  sys_irq_id_register 11			Timer ID			state flag 			frequency	void
 *	----------------------------------------------------------------------------------------------
 *  sys_create_messagebox	12		number of boxes		unused				unused		void
 *  ----------------------------------------------------------------------------------------------
 *	sys_mbox_post		13			box id				message				unused		status
 *	----------------------------------------------------------------------------------------------
 *	sys_mbox_read		14			box id				message pointer		unused		status
 *	----------------------------------------------------------------------------------------------
 *	sys_create_pdir		15			os phys addr		os virt addr		os size		os pdir
 *	----------------------------------------------------------------------------------------------
 *	sys_create_os		16			os entry			os priority			os pdir		void
 *	----------------------------------------------------------------------------------------------
 *	sys_reschedule		17			unused				unused				unused		void
 *	----------------------------------------------------------------------------------------------
 *	sys_suspend			18			return value		unused				unused		void
 *									0:	success
 *									1:	reconfig
 *									2:	busy
 *									3:  error
 *									4:  nothing
 *	----------------------------------------------------------------------------------------------
 *	sys_hwmgr_register	19			unused				unused				unused		void
 *	----------------------------------------------------------------------------------------------
 *	sys_hwmgr_request   20			argument1			argument2			argument3	result
 * -----------------------------------------------------------------------------------------------
 *  sys_insert_fpga_mapping 23		vm id				virtual addr		phys addr   result
 * -----------------------------------------------------------------------------------------------
 *  sys_delete_fpga_mapping 24      vm id               virtual addr		unused		void
 * -----------------------------------------------------------------------------------------------
 *  sys_IVC_Send		30			vm id				interrupt id
 */

void sys_create_ec (void (*ec_pc)(), void * ec_sp, int ec_prio)
{
	syscall (0, reinterpret_cast<unsigned>(ec_pc), reinterpret_cast<unsigned>(ec_sp), ec_prio);
}


void sys_yield()
{
	syscall (1, 0, 0, 0);
}

void sys_dma(/*int id, int ec_prio,*/ int N_samples, int Value_In1[], int Value_In2[])/////////////////////
{
	syscall (32, /*id, ec_prio,*/ N_samples, Value_In1, Value_In2);
}

int *SUM(int id,  int Value_In1[], int Value_In2[])/////////////////////
{
	syscall (33, id, Value_In1, Value_In2);
}
//void sys_irq_enable()
//{
//	syscall (2, 0, 0, 0);
//}

void sys_dcache_disable()
{
	syscall (3, 0, 0, 0);
}

//void sys_irq_disable()
//{
//	syscall (7, 0, 0, 0);
//}

int sys_virq_ctrl(int op, unsigned int arg1, unsigned int arg2)
{
	return syscall(8, op, arg1, arg2);
}

void sys_remap(mword addr)
{
	syscall (9, addr, 0, 0);
}


void sys_insert_mapping(mword phys, mword virt, mword size)
{
	syscall (10, phys, virt, size);
}

void sys_create_messagebox(int num)
{
	syscall (12, num, 0, 0);
}

mword sys_create_pdir(mword phys, mword virt, mword size)
{
	return syscall (15, phys, virt, size);
}

void sys_create_os (mword ec_pc, int ec_prio, mword os_pdir, int type)
{
	if(type == 0) //General OS
		syscall (16, ec_pc, ec_prio, os_pdir);
	if(type == 1) //Real-Time OS
		syscall (27, ec_pc, ec_prio, os_pdir);
}

void sys_reschedule(){
	syscall (17, 0, 0, 0);
}

void sys_suspend(mword rtn){
	syscall (18, rtn, 0, 0);
}

void sys_hwmgr_register(){
	print("in sys_hwmgr_register\n");
	syscall (19, 0, 0, 0);
}

//int sys_hwmgr_request(mword arg01, mword arg02, mword arg03){
//	return syscall (20, arg01, arg02, arg03);
//}

/*
 * Create 4k page in VM's space for FPGA Accellerator IFs
 * This page is by default READ-ONLY in user space
 */
int sys_insert_fpga_mapping(int ec_id, mword virt_addr, mword phys_addr){
	return syscall (23, ec_id, virt_addr, phys_addr);
}

/* Change fpga mapping attribute(4K) for user:
 * (r1 = VM ID, r2 = virt addr, r3 = attr)
 * 	---------------------------------------
 *	attr	Dscription
 *	----------------------------------------
 *	0		Delete page
 *	1		Set page Read-only to user level
 *	2		Set page Read-Write
 *	----------------------------------------
 */
void sys_delete_fpga_mapping(int ec_id, mword virt_addr){
	syscall (24, ec_id, virt_addr, 0);}
void sys_fpga_page_ro(int ec_id, mword virt_addr){
	syscall (24, ec_id, virt_addr, 1);}
void sys_fpga_page_rw(int ec_id, mword virt_addr){
	syscall (24, ec_id, virt_addr, 2);}

void sys_IVC_Send(int vm_id, int irq_id, int dev_id){
	//syscall(30, vm_id, irq_id, dev_id);
}

/* this syscall is specific for performance measurement */
void sys_void(){
	//XTime_SetTime(0);
	syscall	(99, 0, 0, 0);
	//timeprint_low();
	print(" -- (Hyper call exit) \n\r");
}
