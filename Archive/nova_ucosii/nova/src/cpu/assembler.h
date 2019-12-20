/*
 * assembler.h
 *
 *  Created on: 2 déc. 2013
 *      Author: XIATAN
 */

#ifndef ASSEMBLER_H_
#define ASSEMBLER_H_

#include "barrier.h"

/*
 * Instruction barrier
 */
        .macro		instr_sync
        isb
        .endm

/*
 * Set the cpu mode by changing cpsr_c
 */
		.macro		setmode, mode
		msr			cpsr_c, #\mode
		.endm

/*
		* Enable and disable interrupts
*/
		.macro        disable_irq_notrace
		cpsid        i
		.endm

		.macro        enable_irq_notrace
		cpsie        i
		.endm

	    .macro asm_trace_hardirqs_off
	#if defined(CONFIG_TRACE_IRQFLAGS)
	    stmdb sp!, {r0-r3, ip, lr}
	    bl        trace_hardirqs_off
	    ldmia        sp!, {r0-r3, ip, lr}
	#endif
	    .endm

	    .macro asm_trace_hardirqs_on_cond, cond
	#if defined(CONFIG_TRACE_IRQFLAGS)
	     /*
	      * actually the registers should be pushed and pop'd conditionally, but
	      * after bl the flags are certainly clobbered
	      */
	    stmdb sp!, {r0-r3, ip, lr}
	    bl\cond        trace_hardirqs_on
	    ldmia        sp!, {r0-r3, ip, lr}
	#endif
	    .endm

	    .macro asm_trace_hardirqs_on
	    asm_trace_hardirqs_on_cond al
	    .endm

		.macro disable_irq
		disable_irq_notrace
		asm_trace_hardirqs_off
		.endm

		.macro enable_irq
		asm_trace_hardirqs_on
		enable_irq_notrace
		.endm

/*
 * Save the current IRQ state and disable IRQs. Note that this macro
 * assumes FIQs are enabled, and that the processor is in SVC mode.
 */
		.macro        save_and_disable_irqs, oldcpsr
		mrs        \oldcpsr, cpsr
		disable_irq
		.endm

		.macro        save_and_disable_irqs_notrace, oldcpsr
		mrs        \oldcpsr, cpsr
		disable_irq_notrace
		.endm

/*
* Restore interrupt state previously stored in a register. We don't
* guarantee that this will preserve the flags.
*/
		.macro        restore_irqs_notrace, oldcpsr
		msr        cpsr_c, \oldcpsr
		.endm

		.macro restore_irqs, oldcpsr
		tst        \oldcpsr, #PSR_I_BIT
		asm_trace_hardirqs_on_cond eq
		restore_irqs_notrace \oldcpsr
		.endm

#endif /* ASSEMBLER_H_ */
