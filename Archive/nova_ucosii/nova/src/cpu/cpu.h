/*
 * cpu.h
 *
 *  Created on: 12 déc. 2013
 *      Author: XIATAN
 */

#ifndef CPU_H_
#define CPU_H_

#include "../include/compiler.h"
#include "../include/types.h"

#include "../bsp/include/xil_cache.h"

#include "shutdown.h"
#include "tlbflush.h"

class Cpu
{
    public:
        enum
        {
            EXC_NM      = 7,
            EXC_TS      = 10,
            EXC_GP      = 13,
            EXC_PF      = 14,
            EXC_AC      = 17
        };

        ALWAYS_INLINE
        static inline mword ttbr0()
        {
            mword ttbr0;
            asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttbr0));
            return ttbr0;
        }

        ALWAYS_INLINE NORETURN
        static inline void shutdown()
        {
        	platform_cpu_die(0);
        }

        ALWAYS_INLINE
        static inline void flush_tlb_range(mword addr, mword end )
        {
        	flush_kern_tlb_range(addr, end);
        }

        ALWAYS_INLINE
        static inline void flush_tlb_page(mword addr)
        {
        	local_flush_tlb_kernel_page(addr);
        }

        ALWAYS_INLINE
        static inline void flush_tlb_all()
        {
        	local_flush_tlb_all();
        }

};
#endif /* CPU_H_ */
