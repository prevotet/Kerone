/*
 * user.cc
 *
 *  Created on: 13 mars 2014
 *      Author: XIATAN
 */

#include "xil_io.h"
#include "performance.h"
#include "xil_printf.h"

#include "compiler.h"
#include "syscall_list.h"
#include "print.h"
#include "elf.h"
#include "bit.h"

#include "irq.h"
#include "vpsr.h"


/************************** Constant Definitions *****************************/


#define guest_os_elf_01 0x181f000
#define guest_os_elf_02 0x184f000
#define guest_os_elf_03 0x1870000
#define guest_os_elf_04 0x18C1000

#define USER_SPACE_GUEST 	0x4000
#define USER_SPACE_REMAP 	0xDF100000
#define PAGE_SIZE 		0x1000

//extern void HW_Task_Manager_Bootloader();

VM_PSR vpsr;

//NORETURN
//void thread_function1 ()
//{
//	while (1){
//
//		print ("USER: Task 1. \n\r");
//		sys_yield();
//	}
//}

//
//NORETURN
//void thread_function2 ()
//{
//	while (1) {
//		sys_yield();
//	}
//}
//
//NORETURN
//void thread_function3 ()
//{
//	print ("USER: Task 3. \n\r");
//
//	while (1);
//
//}

/*
 * 	 addr: phys addr of elf header
 * 	 prio: Guest OS PRIORITY
 * 	 type: OS type: 0 general OS; 1 RTOS
 */
void boot_guest_os(mword addr, int prio, int type){
	mword guest_os_entry;
	mword guest_os_phys = 0xffffffff;
	mword guest_os_virt = 0xffffffff;
	mword guest_os_size = 0;

	mword offset_size;

	mword guest_os_pdir;

	mword elf_offset = addr & 0x000fffff; //the offset of elf header in one 4M page

	Eh *e;
	Ph *p;

	print("\n\r-------------------------------\n\r"
			"User: Start boot guest OS. \n\r");

	/* Remap elf header (to user_space_remap 0xDF100000)*/
	sys_remap(addr);
	e = (Eh *)(USER_SPACE_REMAP + elf_offset);

	/* Check elf header */
	if (e->ei_magic != 0x464c457f || e->ei_data != 1 || e->type != 2){
		print ("User ERROR: No Guest OS ELF! \n");
		return;
	}

	/* Get program header number	*/
	unsigned count = e->ph_count;

	/* Load elf information */
	guest_os_entry 	= e->entry;
	p 				= (Ph *)((mword)e + e->ph_offset);

	for (; count--; p++) {

		if(guest_os_phys > align_dn(p->f_offs + addr, PAGE_SIZE))
			guest_os_phys = align_dn (p->f_offs + addr, PAGE_SIZE);

		if(guest_os_virt > align_dn(p->v_addr, PAGE_SIZE))
			guest_os_virt = align_dn(p->v_addr, PAGE_SIZE);

		offset_size = p->v_addr - align_dn(p->v_addr, PAGE_SIZE);
		guest_os_size 	= guest_os_size + align_up( (p->m_size + offset_size), PAGE_SIZE);

		/* Check if guset OS takes the appropriate user space */
		if(guest_os_virt < USER_SPACE_GUEST){
			print ("User ERROR: Guest OS virt wrong! \n");
			return;
		}
	}
	/* Create a shadow mapping for guset OS */
	guest_os_pdir = sys_create_pdir(guest_os_phys, guest_os_virt, guest_os_size);

	/* Create EC for guest OS */
	sys_create_os(guest_os_entry, prio, guest_os_pdir, type);
}

void InterruptHandler(){
	print(" USER-Defined interrupt! \n\r");
	*(unsigned long*)(0xE0300000) = 0x0;
}

//EXTERN_C NORETURN
//void main_func ()
//{
//	print 	("\r\n ************	User module is launched	 ************* \n\r");
//
//	char new_stack[512];


//	int i = 1;
//	sys_create_ec (thread_function1, new_stack + i * 64, 0);
	//i++;
	//sys_create_ec (thread_function2, new_stack + i * 64, 0);
	//i++;
	//sys_create_ec (thread_function3, new_stack + i * 64, 1);
	//i++;

	//sys_create_ec (HW_Task_Manager_Bootloader, new_stack + i * 256, 3);


	//boot_guest_os(guest_os_elf_01, 2, 1);
	//boot_guest_os(guest_os_elf_02, 1, 0);
	//boot_guest_os(guest_os_elf_03, 1, 0);
	//boot_guest_os(guest_os_elf_04, 1, 0);

//	print	("\n\r");

	//sys_create_messagebox(2);

	/* Initialize interrupt handler */
//	irq_init();

	/* Unmask interrupts */
//	VM_IRQ_En();

//
//	while (1) {}
//
//}



