/*
 * ualloc.cc
 *
 *  Created on: 3 sept. 2014
 *      Author: XIATAN
 */

#include "ualloc.h"
#include "kalloc.h"
#include "memory.h"
#include "extern.h"
#include "strings.h"
#include "print.h"

// Xilinx BSP file
#include "xil_printf.h"

/*
Ualloc Ualloc::allocator(USER_SHARABLE, USER_SHARABLE_E);

void * Ualloc::alloc (mword size)
{
    if (end - size < begin)
        panic("Ualloc::alloc: User sharable has no mem\n");

    end -= size;
    print("Ualloc::alloc: end is changed\n\r");

    return (void*)end;
}
*/

mword Ualloc::virt2phys (mword user_pdir, mword virt)
{
    mword phys;
    mword* pdir = static_cast<mword*>(Kalloc::phys2virt(user_pdir));
    mword* lv2_ptab;

    if( ( pdir[virt>>20] & 0x3 ) == 0x2 )
    	phys = (pdir[virt>>20] & ~SECTION_MASK) | (virt & SECTION_MASK);

    else if( pdir[virt>>20] & 1 ){
    	lv2_ptab = static_cast<mword*>(Kalloc::phys2virt (pdir[virt >> 20] & ~PAGE_MASK));
    	phys = ( lv2_ptab[ (virt>>12) & 0xff ] & ~PAGE_MASK ) | ( virt & PAGE_MASK);
    }
    else{
    	xil_printf("Ualloc: page: %x (%x) does not exist. \n\r", virt, pdir[virt>>20]);
    	phys = 0;
   	}

    return phys;
}
