/*
 * kalloc.cc
 *
 *  Created on: 5 déc. 2013
 *      Author: XIATAN
 */


// Xilinx BSP files
#include "xil_printf.h"

#include "kalloc.h"
#include "memory.h"
#include "extern.h"
#include "strings.h"
#include "print.h"

//#include "include/types.h"
//#include "include/strings.h"

extern mword OFFSET;
extern char _mempool_f, _mempool_e;

Kalloc Kalloc::allocator (	reinterpret_cast<mword>(& _mempool_f),
							reinterpret_cast<mword>(& _mempool_e)	);


void * Kalloc::alloc (unsigned size)
{
    if (end - size < begin)
        panic("Kalloc::alloc_page: kernel has no mem\n");

    end -= size;

    //xil_printf("Kalloc::alloc_page: end is changed: %x\n\r", end);

    return reinterpret_cast<void*>(end);
}

void * Kalloc::alloc_page (unsigned size, Fill fill)
{
	void * p = reinterpret_cast<void*>(begin);

	if (begin + size * PAGE_SIZE > end)
		panic ("Kalloc::alloc_page: kernel has no mem\n");

    begin += size * PAGE_SIZE;

    if (fill)
    	memset (p, fill == FILL_0 ? 0 : ~0, size * PAGE_SIZE);

   // xil_printf("Kalloc::alloc_page: begin is changed: %x\n\r", begin);

    return p;
}

void * Kalloc::phys2virt (mword phys)
{
    mword virt = phys + reinterpret_cast<mword>(&OFFSET);
	return reinterpret_cast<void*>(virt);
}

mword Kalloc::virt2phys (void * virt)
{
    mword phys = reinterpret_cast<mword>(virt) - reinterpret_cast<mword>(&OFFSET);
    //mword phys = reinterpret_cast<mword>(virt) - OFFSET;
    return phys;
}


mword Kalloc::alloc_shadow_pdir()
{
	mword p;

	/*	Align to 16KB edge	*/
	while(begin & 0x3FFF){
		begin = begin + PAGE_SIZE;
	}

	if(begin + PDIR_SIZE >end)
		panic ("Kalloc:alloc_shadow_pdir: kernel has no mem\n\r");

	p = begin;

	//memset ((void*)begin, FILL_0, PDIR_SIZE);

	begin += 4 * PAGE_SIZE;

	xil_printf("Kalloc::alloc_shadow_pdir: begin is changed: %x\n\r", begin);

	return virt2phys((void*)p);

}


