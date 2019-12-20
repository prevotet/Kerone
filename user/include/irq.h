/*
 * irq.h
 *
 *  Created on: 11 juin 2015
 *      Author: XIATAN
 */

#ifndef IRQ_H_
#define IRQ_H_

typedef void (*IntHandler)();

 void irq_init();
 void sgi_generate(unsigned long);
 void irq_handler_reg(int id, void (*handler)());
 int guest_IRQ_Acknowledge();
 void guest_IRQ_Clear(unsigned short src_nbr);
 void guest_Irq_DisEn(int);
 void guest_Irq_En(int);
 void guest_ENTER_CRITICAL();
 void guest_IRQ_Register(void (*irs_entry)(), unsigned int psr_ptr);
extern "C" void _exit (int);
extern "C" void IRQ_entry(void);

#endif /* IRQ_H_ */
