/*
 * IntEentry.S
 *
 *  Created on: 11 juin 2015
 *      Author: XIATAN
 */
#include "vpsr_macro.h"

.global IRQ_entry
.extern irq_handler
.extern irq_stack


IRQ_entry:
//    LDR     SP, =irq_stack
                                                                @ SAVE Thread context onto USER STACK (Tian):
    STMFD   SP!, {LR}                                           @   Push Thread's LR,
    STMFD   SP!, {R0-R12}                                       @   Push Thread's R12-R0,
    //MRS		R1, SPSR											@   Save Thread's CPSR
    //SWI		25													@   syscall: GUEST_OS_CPU_SR_OP
    LDR		R1, =VSPSR
    LDR		R0, [R1]
    STMFD	SP!, {R0}                                           @   Push Thread's CPSR (i.e. exception SPSR).

    bl 		irq_handler
                                                                @ RESTORE OLD CONTEXT:
    LDMFD   SP!, {R0}                                           @    Pop old CPSR,
	isb
	GUEST_OS_VCPSR_WRITE R0, R1									@ Resume virtual CPSR
	isb
	LDMFD   SP!, {R0-R12, LR, PC}
