/*
 * entry.S
 *
 *  Created on: 17 févr. 2014
 *      Author: XIATAN
 */

#include "ptrace.h"
#include "../include/memory.h"
#include "../bsp/include/global_timer.h"

.extern syscall_handler		//call swi_handler
.extern irq_handler	//call interrupt_handler
.extern und_handler_vfp
.extern abort_handler

.extern prefetch

.global vector_svc
.global vector_irq
.global vector_und
.global vector_abort

.global vector_prefetch

.code 32

.align 5

/*
 *  syscall(call_num, w1, w2) is to call kernel service, 4 arguments are allowed:
 *  	r0	call_num:	system call service number;
 *  	r1	w1		:	argument 1;
 *  	r2	w2		:	argument 2;
 *  	r3	w3		:	argument 3;
 */

vector_svc:

/*
 * Step 1: Save user registers to svc stack according to the Sys_regs structure
 */
	sub 	sp, sp, #S_FRAME_SIZE
	stmia 	sp, {r0 - r12} 			// Save calling r0 - r12
	add 	r8, sp, #S_PC
	stmdb 	r8, {sp, lr}^ 			// Save calling sp, lr (they are of user mode because of ^)
	mrs 	r8, spsr 				// called from non-FIQ mode, so ok.
	mov		r7, #S_PC
	mov		r6, #S_PSR
	str 	lr, [sp, r7]		// Save calling PC
	str 	r8, [sp, r6] 		// Save calling CPSR

/*
 * Step 2: Get the service number and go to svc handler
 *
 * 			To start with, we use always svc instruction to convey the syscall number:
 *			such as: SVC 0x01. In this way we use r0 to get the svc instruction and
 *			put the syscall numbri into r0, as the first parameter of syscall_handler.
 *
 *			So the syscall_handler format should be:
 *				void syscall_handler(unsigned int call_num)
 *
 */

/*
 * 	As we show at the beginning of this function, r0 has taken the call number when
 *  entering svc mode. So we directly go to swi_handler()
 */
 	sub		r0, lr, #4
 	ldr		r0, [r0]
 	//ldr		r0, [lr,#-4]			//	PC_usr-8
 	bic		r0, r0, #0xFF000000

	mov		sp, #KSTCK_E

	CLEAR_GLOBAL_TIMER

 	b		syscall_handler


/*
 * 	Entry of the interrupt handler. We jump to svc mode afer:
 *		1) save {cpsr_user, pc_user, r0_user} into irq stsck
 *		2) put irq stack pointer to r0

 */
vector_irq:
	CLEAR_GLOBAL_TIMER
	subs	lr, lr, #0x4	//adjust the return pc address, this is different to SWI handler
	sub		sp, sp, #0xc	//sp_irq = 0xcffff000 - 0xc
	stmia   sp!, {r0, lr}
	mrs    	r0, spsr
    stmia   sp!, {r0}		//sp_irq recovers to 0xcffff000

	//Prepare for SVC32 mode.  IRQs remain disabled.
    mrs		r0, cpsr
	mvn		lr, #0x1f		// lr = 0xffffffe0
	and		r0, r0, lr
	orr		r0, r0, #SVC_MODE
	msr		spsr, r0
	mov		r0, sp			//r0 = sp_irq
	ldr		lr, = __irq_usr
	movs	pc, lr			// go to __irq_usr, mode is changed to SVC(?)

/*
 * Entry of undefined instructions. This works as a trap for sensitive instructions:
 *		1) save {cpsr_user, pc_user, r0_user} into und stack
 *		2) put und stack pointer to r0
 */
vector_und:
	CLEAR_GLOBAL_TIMER
	subs	lr, lr, #0x4	//adjust the return pc address, this is different to SWI handler
	sub		sp, sp, #0xc	//sp_irq = 0xcfffe000 - 0xc
	stmia   sp!, {r0, lr}
	mrs    	r0, spsr
    stmia   sp!, {r0}		//sp_irq recovers to 0xcfffe000

    //Prepare for SVC32 mode.  IRQs remain disabled.
    mrs		r0, cpsr
	mvn		lr, #0x1f		// lr = 0xffffffe0
	and		r0, r0, lr
	orr		r0, r0, #SVC_MODE
	msr		spsr, r0
	mov		r0, sp			//r0 = sp_irq
	ldr		lr, = __und_usr
	movs	pc, lr			// go to __und_usr, mode is changed to SVC

/*
 * Entry of data-access page faults. This detectes the Guest OS accessing forbiden area:
 *		1) save {cpsr_user, pc_user, r0_user} into abt stack
 *		2) put und stack pointer to r0
 */
vector_abort:
	CLEAR_GLOBAL_TIMER
	subs	lr, lr, #0x8	//adjust the return pc address
	sub		sp, sp, #0xc	//sp_irq = 0xcfffd000 - 0xc
	stmia   sp!, {r0, lr}
	mrs    	r0, spsr
    stmia   sp!, {r0}		//sp_irq recovers to 0xcfffd000

    //Prepare for SVC32 mode.  IRQs remain disabled.
    mrs		r0, cpsr
	mvn		lr, #0x1f		// lr = 0xffffffe0
	and		r0, r0, lr
	orr		r0, r0, #SVC_MODE
	msr		spsr, r0
	mov		r0, sp			//r0 = sp_irq
	ldr		lr, = __abt_usr
	movs	pc, lr			// go to __abt_usr, mode is changed to SVC

vector_prefetch:
	b	prefetch

/*
 * 	Called when interrupt occurs in user mode.
 * 		r0 = sp_irq = 0xcffff000
 * 		sp = sp_svc = current->regs.cpsr
 */
__irq_usr:
	sub 	sp, sp, #S_FRAME_SIZE
	sub		r0, r0, #0xc		// r0 = 0xcffff000 - 0xc
	ldr		lr, [r0]			// save calling r0
	str		lr, [sp]
	add		sp, sp, #0x4
	stmia 	sp, {r1 - r12} 		// Save calling r1 - r12
	sub		sp, sp, #0x4		// sp recover to current->regs.r0
	add 	r8, sp, #S_PC
	stmdb 	r8, {sp, lr}^ 		// Save calling sp, lr (of user mode)
	mov		r7, #S_PC
	mov		r6, #S_PSR
	ldr		r1, [r0, #0x4]
	ldr		r2, [r0 ,#0x8]
	str 	r1, [sp, r7]		// Save calling PC
	str 	r2, [sp, r6] 		// Save calling CPSR

	mov		sp, #KSTCK_E
 	b		irq_handler

/*
 * 	Called when Undefined Instruction occurs in user mode.
 * 		r0 = sp_und = 0xcfffe000
 * 		sp = sp_svc = current->regs.cpsr
 */
__und_usr:
	sub 	sp, sp, #S_FRAME_SIZE
	sub		r0, r0, #0xc		// r0 = 0xcfffe000 - 0xc
	ldr		lr, [r0]			// save calling r0
	str		lr, [sp]
	add		sp, sp, #0x4
	stmia 	sp, {r1 - r12} 		// Save calling r1 - r12
	sub		sp, sp, #0x4		// sp recover to current->regs.r0
	add 	r8, sp, #S_PC
	stmdb 	r8, {sp, lr}^ 		// Save calling sp, lr (of user mode)
	mov		r7, #S_PC
	mov		r6, #S_PSR
	ldr		r1, [r0, #0x4]
	ldr		r2, [r0 ,#0x8]
	str 	r1, [sp, r7]		// Save calling PC
	str 	r2, [sp, r6] 		// Save calling CPSR

	mov		sp, #KSTCK_E
 	b		und_handler_vfp

/*
 * 	Called when Abort occurs in user mode.
 * 		r0 = sp_abt = 0xcfffd000
 * 		sp = sp_svc = current->regs.cpsr
 */
__abt_usr:
	sub 	sp, sp, #S_FRAME_SIZE
	sub		r0, r0, #0xc		// r0 = 0xcfffd000 - 0xc
	ldr		lr, [r0]			// save calling r0
	str		lr, [sp]
	add		sp, sp, #0x4
	stmia 	sp, {r1 - r12} 		// Save calling r1 - r12
	sub		sp, sp, #0x4		// sp recover to current->regs.r0
	add 	r8, sp, #S_PC
	stmdb 	r8, {sp, lr}^ 		// Save calling sp, lr (of user mode)
	mov		r7, #S_PC
	mov		r6, #S_PSR
	ldr		r1, [r0, #0x4]
	ldr		r2, [r0 ,#0x8]
	str 	r1, [sp, r7]		// Save calling PC
	str 	r2, [sp, r6] 		// Save calling CPSR

	mov		sp, #KSTCK_E
 	b		abort_handler

