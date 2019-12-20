/*
 * irq.c
 *
 *  Created on: 11 juin 2015
 *      Author: XIATAN
 */
#include "syscall_list.h"
#include "print.h"
#include "xil_printf.h"
#include "irq.h"
#include "vpsr.h"

#define ICDSGIR *(unsigned long *)0xF8F01F00

extern VM_PSR vpsr;

void irq_handler () asm ("irq_handler");


IntHandler HandlerTable[95];


void guest_IRQ_Register(void (*irs_entry)(), unsigned int psr_ptr){
	sys_virq_ctrl(0, (int)irs_entry, psr_ptr);
}

int guest_IRQ_Acknowledge(){
	return vpsr.VACK;
	//return sys_virq_ctrl(5,0,0);	//Return the current interrupt id
}

void guest_IRQ_Clear(unsigned short src_nbr){
	vpsr.VEOI[src_nbr] = 1;
	//sys_virq_ctrl(6,src_nbr,0);
}

void guest_Irq_En(int id){
	sys_virq_ctrl(2,id,0);
}

void guest_Irq_DisEn(int id){
	sys_virq_ctrl(1,id,0);
}

//Mask all virtual IRQs (vCPSR.I was set)
void guest_ENTER_CRITICAL(){	VM_IRQ_Dis();	}
void guest_EXIT_CRITICAL(){		VM_IRQ_En();	}


void DefaultHandler(){
	print(" USER: Undefined interrupt! \n\r");
	//_exit(0);
}

void irq_handler_reg(int irq_nbr, void (*handler)()){
	HandlerTable[irq_nbr] = handler;
}

void irq_init(){
	guest_IRQ_Register(IRQ_entry, (unsigned int)&vpsr);
	//xil_printf("USER: VCPSR: 0x%x \n\r", vpsr.VCPSR_NA);

	for(int i = 0; i < 95; i++)
		HandlerTable[i] = DefaultHandler;

	print("USER: Interrupt Init Over \n\r");
}

void irq_handler(){
	int irq_id;

	irq_id = guest_IRQ_Acknowledge();
	xil_printf("(%d) \n\r", irq_id);
	HandlerTable[irq_id]();
	guest_IRQ_Clear(irq_id);
	return;
}

/* Software Generated Inerrupt: ID = 0 - 15 */
void sgi_generate(unsigned long sgi_nbr){
	asm volatile (	"isb":::);
	ICDSGIR = (1<<16) | sgi_nbr;
	asm volatile (	"isb ":::);
	asm volatile (	"wfi ":::);
}

