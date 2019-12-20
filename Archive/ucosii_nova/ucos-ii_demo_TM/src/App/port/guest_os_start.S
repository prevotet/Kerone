/*
 * guest_os_start.S
 *
 *  Created on: 25 août 2014
 *      Author: XIATAN
 */

.extern _guest_os_start_pre

.section .text

.code 32

.global _guest_os_start

_guest_os_start:
	ldr		sp, =__stack
	b		_guest_os_start_pre
