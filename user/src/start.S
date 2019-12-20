/*
 * start.S
 *
 *  Created on: 13 mars 2014
 *      Author: XIATAN
 */

.extern stack_top

.section .text

.code 32

.global _start

_start:
	ldr		sp, =stack_top
	b		main_func

