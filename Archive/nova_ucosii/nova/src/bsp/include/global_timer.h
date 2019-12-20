/*
 * global_timer.h
 *
 *  Created on: 27 janv. 2016
 *      Author: XIATAN
 */

#ifndef GLOBAL_TIMER_H_
#define GLOBAL_TIMER_H_

#include "../../include/config.h"

.macro CLEAR_GLOBAL_TIMER
#if IS_KERNEL_CRITICAL_MEASURE | IS_PRRMONITOR_MEASURE
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


#endif /* GLOBAL_TIMER_H_ */
