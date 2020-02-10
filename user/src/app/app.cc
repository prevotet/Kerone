
/*
app.cc
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
#include "../src/HWManager/HWManager.h"

extern void HW_Task_Manager_Bootloader();
extern void HW_Task_Manager(int);
#define N_samples		4

int Value_In1_TF1[4] = {44, 33, 22, 11};
int Value_In1_TF2[4] = {1, 2, 3, 4};
int Value_In2_TF1[4] = {11, 22, 33, 44};
int Value_In2_TF2[4] = {4, 3, 2, 1};

int *Value_Out0, *Value_Out1, *Value_Out2;

//NORETURN
void thread_function1 ()
{
	while (1){

		print("USER: Task1. \n\r");
		 // indicates that we want to use HW_DEV0 i.e the adder
		// If the adder is not in the PRR then trap => HWManager_Main_Entry
	//	while(1);
	//	*(unsigned int*)(HW_DEV0)=0x01;
		// Perform the addition because the dev is ready
	//	Value_Out0 = SUM(1, Value_In1_TF1, Value_In1_TF2);
		sys_yield();
	}
}


void thread_function2 ()
{
	while (1){

		print ("USER: Task 2. \n\r");
		 // indicates that we want to use HW_DEV0 i.e the subtractor
		// If the adder is not in the PRR then trap => HWManager_Main_Entry
	//	*(unsigned int*)(HW_DEV1)=0x01;
	//	Value_Out1 = SUM(2, Value_In2_TF1, Value_In2_TF2);
		sys_yield();
	}
}







EXTERN_C NORETURN
void main_func ()
{
	print 	("\r\n ************	User module is launched	 ************* \n\r");

	char new_stack[512];

	int i = 1;
	print("create EC Thread1\n");
	sys_create_ec (thread_function1, new_stack + i * 64, 0);
	i++;
	print("create EC Thread2\n");
	sys_create_ec (thread_function2, new_stack + i * 64, 0);
	i++;
	//print("create EC HW_TASK_Manager_Bootloader\n");
	//sys_create_ec (HW_Task_Manager_Bootloader, &new_stack[511], 1);

	//boot_guest_os(guest_os_elf_01, 2, 1);
	//boot_guest_os(guest_os_elf_02, 1, 0);
	//boot_guest_os(guest_os_elf_03, 1, 0);
	//boot_guest_os(guest_os_elf_04, 1, 0);

	print	("\n\r");

	//sys_create_messagebox(2);

	/* Initialize interrupt handler */
	irq_init();

	/* Unmask interrupts */
	VM_IRQ_En();

	sys_reschedule();

	while (1) {}

}

