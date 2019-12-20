/*
 * ptrace.h
 *
 *  Created on: 28 nov. 2013
 *      Author: XIATAN
 */

#ifndef PTRACE_H_
#define PTRACE_H_

/*
 * The offset parameters for the register structure in Sys_regs
 * Used for the stack operations
 */
#define S_FRAME_SIZE	0x11 << 2;
#define S_R0			0x0 << 2;
#define S_R1			0x1 << 2;
#define S_R2			0x2 << 2;
#define S_R3			0x3 << 2;
#define S_R4			0x4 << 2;
#define S_R5			0x5 << 2;
#define S_R6			0x6 << 2;
#define S_R7			0x7 << 2;
#define S_R8			0x8 << 2;
#define S_R9			0x9 << 2;
#define S_R10			0xA << 2;
#define S_R11			0xB << 2;
#define S_R12			0xC << 2;
#define S_SP			0xD << 2;
#define S_LR			0xE << 2;
#define S_PC			0xF << 2;
#define S_PSR			0x10 << 2;

/*
* PSR bits
*/
#define USR26_MODE      0x00000000
#define FIQ26_MODE      0x00000001
#define IRQ26_MODE      0x00000002
#define SVC26_MODE      0x00000003
#define USR_MODE        0x00000010
#define FIQ_MODE        0x00000011
#define IRQ_MODE        0x00000012
#define SVC_MODE        0x00000013
#define ABT_MODE        0x00000017
#define UND_MODE        0x0000001b
#define SYSTEM_MODE     0x0000001f
#define MODE32_BIT      0x00000010
#define MODE_MASK       0x0000001f
#define PSR_T_BIT       0x00000020
#define PSR_F_BIT       0x00000040
#define PSR_I_BIT       0x00000080
#define PSR_A_BIT       0x00000100
#define PSR_E_BIT       0x00000200
#define PSR_J_BIT       0x01000000
#define PSR_Q_BIT       0x08000000
#define PSR_V_BIT       0x10000000
#define PSR_C_BIT       0x20000000
#define PSR_Z_BIT       0x40000000
#define PSR_N_BIT       0x80000000
#define APSR_MASK		0xf80f0000
#define NON_APSR_MASK	0x0000ffff

#define USER_PSR_DEFAULT  	USR_MODE;

#define USER_VCPSR_DEFAULT 	PSR_F_BIT | PSR_I_BIT | USR_MODE;

#define FPEXC_EN		0x40000000 	/* FPU enable bit, (1 << 30) */

#endif /* PTRACE_H_ */
