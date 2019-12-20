/*
 * tlb-v7.S
 *
 *  Created on: 12 déc. 2013
 *      Author: XIATAN
 *
 *        v7wbi_flush_kern_tlb_range(start,end)
 *
 *        Invalidate a range of kernel TLB entries
 *
 *        - start - start address (may not be aligned)
 *        - end - end address (exclusive, may not be aligned)
 */

#include "../include/memory.h"

.section .text

.global flush_kern_tlb_range

.code 32

flush_kern_tlb_range:
        dsb
        mov        r0, r0, lsr #PAGE_SHIFT      //align address
        mov        r1, r1, lsr #PAGE_SHIFT
        mov        r0, r0, lsl #PAGE_SHIFT
        mov        r1, r1, lsl #PAGE_SHIFT
1:
        mcr        p15, 0, r0, c8, c3, 1        // TLB invalidate U MVA (shareable)
        add        r0, r0, #PAGE_SIZE
        cmp        r0, r1
        blo        1b
        dsb
        isb
        mov        pc, lr


