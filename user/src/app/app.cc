
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

		//print ("USER: Task 1. \n\r");
		HW_Task_Manager(0);// start PR HW IP 0
		Value_Out0 = SUM(1, Value_In1_TF1, Value_In1_TF2);
		HW_Task_Manager(1);
		Value_Out1 = SUM(2, Value_In2_TF1, Value_In2_TF2);
		sys_yield();
	}
}


void thread_function2 ()
{
	while (1){

		//print ("USER: Task 2. \n\r");
		HW_Task_Manager(1);// start PR HW IP 1
		//Value_Out1 = SUM(2, Value_In2_TF1, Value_In2_TF2);
		sys_yield();
	}
}


void thread_function3 ()
{
	while (1){

		print ("USER: Task 3. \n\r");
		//HW_Task_Manager(1);// start PR HW IP 1
		Value_Out2 = SUM(3, Value_Out0, Value_Out1);
		sys_yield();
	}
}




EXTERN_C NORETURN
void main_func ()
{
	print 	("\r\n ************	User module is launched	 ************* \n\r");

	char new_stack[512];

	int i = 1;
	sys_create_ec (HW_Task_Manager_Bootloader, new_stack + i * 256, 1);
	i++;
	sys_create_ec (thread_function1, new_stack + i * 64, 0);
	//i++;
	//sys_create_ec (thread_function2, new_stack + i * 64, 0);


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

