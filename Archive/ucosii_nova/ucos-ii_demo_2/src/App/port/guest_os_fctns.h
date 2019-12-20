/*
 * guest_os_fctns.h
 *
 *  Created on: 9 juil. 2014
 *      Author: XIATAN
 */

#ifndef GUEST_OS_FCTNS_H_
#define GUEST_OS_FCTNS_H_

extern void guest_CPU_IntDis();
extern void guest_CPU_IntEn();

extern void guest_ICacheEnable();
extern void guest_DCacheEnable();
extern void guest_ICacheDisable();
extern void guest_DCacheDisable();

extern void guest_IRQ_Register(void (*)(), unsigned int);
extern void guest_CSP_IntClr(unsigned short, unsigned short);
extern int  guest_IRQ_Acknowledge();
extern void guest_OS_Timer_Register(int freq);
extern void guest_OS_Timer_Enable();
extern void guest_OS_Timer_Disable();

extern int guest_OS_Mbox_Post(int , unsigned long );
extern int guest_OS_Mbox_Read(int , unsigned long *);

extern unsigned long guest_OS_GetPhysAddr(unsigned long);

extern void guest_idle();

extern void guest_MaskedIRQ_handler();

#endif /* GUEST_OS_FCTNS_H_ */

