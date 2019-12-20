/*
 * HWmanager_Entry.S
 *
 *  Created on: 22 mars 2016
 *      Author: XIATAN
 */

.extern HWM_main_stack_top
.extern HWManager_Main

.extern HWManager_IRQ_STK_top
.extern HWManager_IRQ_Handler

.extern hwmgr_vpsr_cpsr

/*	Get HW Task information:
 *  R0: Virtual Machine ID
 *  R1: Device Interface Address
 *  R2: VM Priority
 */
 .global HWManager_Main_Entry
HWManager_Main_Entry:
	ldr r3, =hwmgr_vpsr_cpsr
	ldr r3, [r3]
	orr r3, r3, #0x80
	ldr r3, =main_stack_top
	ldr sp, [r3]
	b HWManager_Main

.global HWManager_IRQ_Entry
HWManager_IRQ_Entry:
	ldr r3, =hwmgr_vpsr_cpsr
	ldr r3, [r3]
	orr r3, r3, #0x80
	ldr r3, =HWManager_IRQ_STK_top
	ldr sp, [r3]
	b HWManager_IRQ_Handler
