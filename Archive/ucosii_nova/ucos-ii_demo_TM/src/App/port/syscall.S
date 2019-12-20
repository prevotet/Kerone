/*
 * syscall.S
 *
 *  Created on: 13 mars 2014
 *      Author: XIATAN
 */

.section .text

.code 32

.global syscall

/*
 * 	unsigned long syscall(call_num, w1, w2 w3)
 *	------------------------------------------------
 *			r0	call_num	kernel service number
 *  ------------------------------------------------
 *			r1	w1			argument 1
 *  ------------------------------------------------
 *			r2	w2			argument 2
 *  ------------------------------------------------
 *			r3	w3			argument 3
 *  ------------------------------------------------
 */

syscall:
	stmfd	sp!, {lr}
	swi		0x0
	ldmfd	sp!, {pc}


