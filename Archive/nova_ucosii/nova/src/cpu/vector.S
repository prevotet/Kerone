/*
 * vector.S
 *
 *  Created on: 17 févr. 2014
 *      Author: XIATAN
 */


	.extern vector_svc
	.extern vector_irq
	.extern vector_und

	.extern vector_abort
	.extern vector_prefetch

	//.equ stub_offset, vector_start + 0x200 - stub_start

	.global vector_start

	.code 32

vector_start:
	b		reset
    ldr   	pc, =vector_und		//vector_undefined
    ldr	    pc, =vector_svc
    ldr   	pc, =vector_prefetch
    ldr   	pc, =vector_abort
    NOP     // Reserved for secure montor calls
    ldr	    pc, =vector_irq
    b   	vector_fiq



/*
 * The reset exception handler is not composed in the first verson of NOVA
 * for simplization. Once this function is needed, we suggest use the reference
 * code in uC/OS ii:
 *
 *      MicroCOSII\uCOS-II_virtual_cortexA9\uCOS-II_virtual_cortexA9\BSP\start.S
 */

// 	.global stub_start

//stub_start:
reset:
	NOP
/*
vector_undefined:
	NOP

vector_prefetch:
	NOP

vector_abort:
	NOP
*/
//vector_irq:
//	NOP

vector_fiq:
	NOP

//	.global stub_end
//stub_end:

	.global vector_end
vector_end:


