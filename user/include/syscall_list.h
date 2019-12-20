/*
 * syscall_list.h
 *
 *  Created on: 13 mars 2014
 *      Author: XIATAN
 */

#ifndef SYSCALL_LIST_H_
#define SYSCALL_LIST_H_

#include "types.h"

extern void sys_create_ec(void (*)(), void *, int);
extern void sys_create_external_ec(mword, mword, int);
extern void sys_yield(void);
extern int *SUM(int, int[], int[]);
//extern void sys_irq_enable(void);
extern void sys_dcache_disable(void);
//extern void sys_irq_disable(void);
extern int  sys_virq_ctrl(int, unsigned int, unsigned int);
extern void sys_remap(mword);
extern void sys_insert_mapping(mword, mword, mword);
extern void sys_create_messagebox(int);
extern mword sys_create_pdir(mword, mword, mword);
extern void sys_create_os (mword, int, mword, int);
extern void sys_reschedule();
extern void sys_suspend(mword);
extern void sys_hwmgr_register();
//extern int 	sys_hwmgr_request(mword, mword, mword);
extern int 	sys_insert_fpga_mapping(int, mword, mword);
extern void sys_delete_fpga_mapping(int, mword);
extern void sys_fpga_page_ro(int ec_id, mword virt_addr);
extern void sys_fpga_page_rw(int ec_id, mword virt_addr);
extern void sys_IVC_Send(int vm_id, int irq_id, int dev_id);
extern void sys_void();


#endif /* SYSCALL_LIST_H_ */
