/*
 * syscall_list.h
 *
 *  Created on: 13 mars 2014
 *      Author: XIATAN
 */

#ifndef SYSCALL_LIST_H_
#define SYSCALL_LIST_H_

extern void sys_create_ec(void (*)(), void *, int);
extern void sys_yield(void);
//extern void sys_irq_enable(void);
//extern void sys_irq_disable(void);
extern void sys_dcache_disable(void);
extern void sys_icache_disable(void);
extern void sys_dcache_enable(void);
extern void sys_icache_enable(void);
extern int  sys_virq_ctrl(int, unsigned long, unsigned int);
extern void sys_vtimer_ctrl(int, int, int);
extern int 	sys_mbox_post(int, unsigned long);
extern int  sys_mbox_read(int, unsigned long *);
extern unsigned long sys_address_v2p(unsigned long virt_addr);
extern void sys_void(void);


#endif /* SYSCALL_LIST_H_ */
