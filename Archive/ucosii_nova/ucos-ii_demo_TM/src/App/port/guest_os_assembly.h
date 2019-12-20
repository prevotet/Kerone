/*
 * guest_os_assembly.S
 *
 *  Created on: 22 avr. 2015
 *      Author: XIATAN
 */

 #include "guest_os_parameters.h"


.extern vpsr
.extern guest_MaskedIRQ_handler
.extern MaskedIRQ_Stack_Top

#define APSR_MASK		0xf80f0000
#define NON_APSR_MASK	0x0000ffff

.equ	VCPSR_NA,			vpsr
.equ	VSPSR,				vpsr+4
.equ	MaskedIRQ,			vpsr+8

.macro GUEST_OS_VCPSR_NA_WRITE	rx1, rx2
	LDR		\rx2, =NON_APSR_MASK
	AND		\rx1, \rx1, \rx2			// Calculate the non-APSR bits --> Rx1
	LDR		\rx2, =VCPSR_NA
	STR		\rx1, [\rx2]				// Write the non-APSR bits to VCPSR_NA
.endm

.macro GUEST_OS_VCPSR_NA_READ	rx1, rx2
	LDR		\rx2, =VCPSR_NA
	LDR		\rx1, [\rx2]				// Get non-APSR bits in VCPSR_NA --> Rx1
.endm

/*
 *	This macro write given value (RX1) to VM's virtual CPSR:
 */
.macro GUEST_OS_VCPSR_WRITE	rx1, rx2
	MSR		APSR_nzcvqg, \rx1			// Write the APSR bits to CPSR
	GUEST_OS_VCPSR_NA_WRITE \rx1, \rx2	// Write the non_APSP bits in VCPSR
.endm

.macro GUEST_OS_VCPSR_READ	rx1, rx2
	GUEST_OS_VCPSR_NA_READ \rx1, \rx2	// Get non-APSR bits in VCPSR_NA --> Rx1
	push	{\rx1}
	MRS		\rx1, CPSR					// Read CPSR-->Rx1
	LDR		\rx2, =APSR_MASK
	AND		\rx2, \rx1, \rx2			// Calculate the APSR bits --> Rx2
	pop		{\rx1}
	ORR		\rx1, \rx1, \rx2			// Calculate the complete virtual CPSR --> Rx1
.endm

.macro GUEST_OS_MASKEDIRQ_CHECK rx1
	ldr 	\rx1, =MaskedIRQ
	ldr		\rx1, [\rx1]
	cmp		\rx1, #0
	swine	31
.endm
/*
 *  This macro is to restore the context of uCOS task, which is used in os_cpu_a.S
 *
 *  Original code:
	------------------------------------------------------------------------------
 		LDMFD   SP!, {R0}             	@ Pop the saved CPSR to R0
    	MSR     SPSR_cxsf, R0			@ Load CPSR value to SPSR
    	LDMFD   SP!, {R0-R12, LR, PC}^ 	@ Pop new task's context, load CPSR with SPSR.
    ------------------------------------------------------------------------------*/
//.macro GUEST_TASK_CONTEXT_RESUME
//    LDMFD   SP!, {R0}         		// Pop the saved CPSR --> R0
//    GUEST_OS_VCPSR_WRITE R0, R1		// Resume virtual CPSR
//    GUEST_OS_MASKEDIRQ_CHECK R0
//	LDMFD   SP!, {R0-R12, LR, PC} 	// Pop task's context
//.endm


 /* Additional section to set global timer zero, to measure IRQ speed  */
.macro CLEAR_GLOBAL_TIMER
 #if IS_TASK_RELEASE_TEST
    push    {R0, R1}

	mov     r0, #520   // 0x208
	movt    r0, #63728 // 0xf8f0
	mov     r1, #0
	str     r1, [r0]   // 0 -> 0xf8f00208 (disable global timer)

	mov		r0, #512   // 0x200
	movt  	r0, #63728 // 0xf8f0
	mov     r1, #0
	str     r1, [r0]   // 0 -> 0xf8f00200 (set lower counter to 0)

	mov     r0, #520   // 0x208
	movt    r0, #63728 // 0xf8f0
	mov     r1, #1
	str     r1, [r0]   // 1 -> 0xf8f00208 (enable global timer)
	pop		{R0, R1}
 #endif
.endm
