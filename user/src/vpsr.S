/*
 * vpsr.S
 *
 *  Created on: 19 janv. 2016
 *      Author: XIATAN
 */

#include "vpsr_macro.h"

//The shared page between VMM and all VMs, currently holds:
//	--virtual CPSP (offset = 0),
//	--virtual SPSR (offset = 4),
//#define KERNEL_USER_SHARED		0xbffff000
//#define KERNEL_USER_SHARED_E 	0xc0000000

//#define VCPSR_OFFSET 	0
//#define VSPSR_OFFSET	4

//vCPSR only holds flags (non-APSR bits)
//#define VCPSR_NA		0xbffff000//KERNEL_USER_SHARED + VCPSR_OFFSET
//#define VSPSR			0xbffff004//KERNEL_USER_SHARED + VSPSR_OFFSET


.global	VM_IRQ_En
.global	VM_IRQ_Dis

.equ 	PSR_INT_DIS,        0xC0  	//Disable both FIQ and IRQ.
.equ 	PSR_FIQ_DIS,        0x40    //Disable FIQ.
.equ 	PSR_IRQ_DIS,        0x80   	//Disable IRQ.


VM_IRQ_En:
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    BIC     R0, R0, #PSR_IRQ_DIS        // Clear IRQ bit in CPSR to enable IRQs.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    BX      LR

VM_IRQ_Dis:
    GUEST_OS_VCPSR_NA_READ     	R0, R1
    ORR     R0, R0, #PSR_IRQ_DIS        // Set IRQ bit in CPSR to disable IRQs.
    GUEST_OS_VCPSR_NA_WRITE		R0, R1
    BX      LR
