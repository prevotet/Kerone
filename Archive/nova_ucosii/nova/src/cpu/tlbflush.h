/*
 * tlbflush.h
 *
 *  Created on: 12 déc. 2013
 *      Author: XIATAN
 */

#ifndef TLBFLUSH_H_
#define TLBFLUSH_H_

#include "barrier.h"
#include "../include/types.h"
#include "../include/memory.h"


extern "C" void flush_kern_tlb_range(mword, mword);

#define __tlb_op(insnarg, arg)                                        \
        do {                                                                \
                asm("mcr " insnarg                                \
                 : : "r" (arg) : "cc");                        \
        	} while (0)

#define tlb_op(regs, arg)        __tlb_op("p15, 0, %0, " regs, arg)

static inline void local_flush_tlb_all(void)
{
        const int zero = 0;
        dsb();
        tlb_op("c8, c3, 0", zero);
        dsb();
        isb();
}

static inline void local_flush_tlb_kernel_page(mword kaddr)
{
		kaddr &= PAGE_MASK;
		dsb();
		tlb_op("c8, c3, 1", kaddr);
		dsb();
		isb();
}

#endif /* TLBFLUSH_H_ */
