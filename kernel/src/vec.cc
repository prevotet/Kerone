/*
 * vector.cc
 *
 *  Created on: 18 févr. 2014
 *      Author: XIATAN
 */

#include "cpu.h"

#include "memory.h"
#include "kalloc.h"
#include "ptab.h"
#include "strings.h"
#include "vec.h"


extern char vector_start[], vector_end[];

void Vec::vec_init(){
// Allocate a 4k page to vector table and remap the address to VEC_BASE(0xFFFF0000)
// This page is set as kernel accessible
	mword vec = Kalloc::virt2phys (Kalloc::allocator.alloc_page(1,Kalloc::NOFILL));
	Ptab::insert_mapping(VEC_BASE, vec, 1);
//Copy the content of vector table to 0xFFFF0000
	memcpy((void *)VEC_BASE, vector_start, vector_end - vector_start + 28);
//Flush cache and tlb for the new page
	Cpu::flush_tlb_all();
	Cpu::flush_tlb_page(VEC_BASE);
}

