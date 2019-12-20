/*
 * irq_init.h
 *
 *  Created on: 20 mars 2014
 *      Author: XIATAN
 */

#ifndef IRQ_INIT_H_
#define IRQ_INIT_H_


typedef struct{
			int	    VirtualTimerID;
			mword	VirtualTimerFreq;		// This is the timer frequency of EC timer.
			int     VMInterruptPriorityLevel;
			mword	InterruptRoutineEntry; 	// A pointer to the interrupt routine service of EC,
											//  which should BE REGISTERED by system call
			//mword 	InterruptPriorityMask;  // PMR value
			mword	InterruptEnableState[3];// ICDISER[0:2]
			mword	InterruptPendingState[3];//ISPENDR[0:2]

			uint8	InterruptState[96]; 	// 96 Byte-width IRQ state fields:
											// 	2'b00: inactive
											// 	2'b01: pending
											//  2'b10: active
			int		PendingID;
			int		ActiveID;

}vGicContext;

typedef enum {Inactive, Pending, Active} IRQState;
/*
 *  Define Timers' IRQ ID
 */
#define  ktimer_id     29 // TTC0 timer
#define  vtimer_id     42 // Private timer: The ID of Guest OS timer interrupt.
#define  rtos_timer_id 43 //
#define  irq_IVC		0 // SGI #0 is used for IVC
#define  PRR_monitor_irq	90

/*
 *  Define timer frequency
 */
#define ktimer_freq		33

/*
 *  Define priority level:
 *  	PriorityKernel:		The kernel interrupts level
 *  	PriorityVM:			The VM's general interrupts level, can't be higher than kernel
 *  	PrioritySGI:		The software generated interrupts level
 *  	PriorityMaskDefault:The initial priority mask level, permitting ALL interrupts
 *  	PriorityMaskKernel :This mask permitting only kernel interrupts
 */
#define IRQPriorityKernel 		(int)8
#define IRQPrioritySGI			(int)IRQPriorityDefault
#define IRQPriorityRTOS			(int)32
#define IRQPriorityVM			(int)64
#define IRQPriorityThread		(int)16
#define IRQPriorityDefault		(int)128
#define IRQPriorityMaskDefault	(int)248
#define IRQPriorityMaskKernel	(int)16

/*
 * Kernel interrupts mask:
 * Binary bits to mark the kernel interrupts, which shall not be changed when switching
 * virtual machine. This is corresponding to the ICDISER[0:2]registers.
 *
 * Reserve interrupts: SGI[0:15], Kernel timer PVT[29], RTOS timer TTC[43], PRR Monitor[90], UART01[82]
 * 				ReserveIrqMask[0] = 0x2000FFFF
 * 				ReserveIrqMask[1] = 0x00000800
 * 				ReserveIrqMask[0] = 0
 */
const unsigned long ReserveIrqMask[3] {0x2000FFFF,0x00000800,0x04040000};

#define Gic_PriorityMask	 *(int *)(0xF8F00104)
//#define Gic_EnableStateReg0	 *(int *)(0xF8F01100)
//#define Gic_EnableStateReg1	 *(int *)(0xF8F01104)
//#define Gic_EnableStateReg2	 *(int *)(0xF8F01108)

void irq_init();
void vtimer_config(mword, mword);
void dma_config(mword, mword[], mword[]);
void vGic_InsertPending(vGicContext *ctx, int irq_id);
void vGic_Switch(vGicContext *prev, vGicContext *next);
void vGIC_GetPriority(int virq_id, u8 *Priority);
void vGic_SetInterruptState( vGicContext * vgctx, int interrupt_id, IRQState state);
void vGIC_SetInterruptRoutineEntry( vGicContext * vgctx, mword value);
void vGIC_EnableInterrupt(int virq_id);
void vGIC_DisableInterrupt(int virq_id);
int  vGIC_ACK(vGicContext * vgctx);
void vGIC_EOI(vGicContext * vgctx, int virq_id);
void vGic_SetPending(int irq_id);
void check_ClockRatio(void);
#define kerone_getTimeSlice Private_TmrRd
#define kerone_setTimeSlice Private_TmrWr

/*
ALWAYS_INLINE
inline void Gic_SetPriorityMask(int mask_level){
	*(unsigned long *)(0xF8F00104) = mask_level; //set ICCPMR
}

ALWAYS_INLINE
inline unsigned long Gic_GetPriorityMask(){
	return *(unsigned long *)(0xF8F00104);	// read ICCPMR
}

ALWAYS_INLINE
inline unsigned long Gic_GetHighestPendingPriority(){
	return (*(unsigned long *)(0xF8F00118) & 0x3ff );	// read ICCPMR
}

ALWAYS_INLINE
inline unsigned long Gic_GetEnableReg0(){
	return *(unsigned long *)(0xF8F01100);	// read ICDISER0
}

ALWAYS_INLINE
inline unsigned long Gic_GetEnableReg1(){
	return *(unsigned long *)(0xF8F01104);	// read ICDISER1
}

ALWAYS_INLINE
inline unsigned long Gic_GetEnableReg2(){
	return *(unsigned long *)(0xF8F01108);	// read ICDISER2
}
*/

#endif /* IRQ_INIT_H_ */
