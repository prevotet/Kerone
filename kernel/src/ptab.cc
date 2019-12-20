/*
 * ptab.cc
 *
 *  Created on: 3 févr. 2014
 *      Author: XIATAN
 */

// Xilinx BSP file
#include "xil_printf.h"

// CPU file
#include "cpu.h"

#include "ptab.h"
#include "kalloc.h"
#include "memory.h"
#include "types.h"
#include "mmu.h"
#include "print.h"

/* add 4k mappings only
 * the parameter 'attr' is to indicate whether the page is accessible to user code
 * attr = 0: full access
 * attr = 1: supervisor access only
 */

extern mword KERN_PDIR;

// Insert a 4k page mapping into the KERNEL page table
void Ptab::insert_mapping (mword virt, mword phys, mword attr)
{
	mword* pdir = static_cast<mword*>(Kalloc::phys2virt(reinterpret_cast<mword>(&KERN_PDIR)));
	mword* ptab;

	/* Check the LSB 1 of pdir table, which indicates whether
	   this entry is for level 2 page table. If there is already
	   a level 2 entry, we don't need to add a lv2 page table
	   here.
	*/
	if( ( pdir[virt>>20] & 1 ) == 0){
		/* Add level 2 page table entry
		 * We should notice here that we insert a 1KB page table here,
		 * yet we allocate 4KB space to it, this is because we have to
		 * make sure very 4KB page is aligned to the edge of 4KB.
		 */
		ptab = static_cast<mword*>(Kalloc::allocator.alloc_page(1, Kalloc::FILL_0));
		mword p = Kalloc::virt2phys (ptab);
		pdir[virt >> 20] = p + LV2_TABLE_ENRTY_FLAG;
	}else{
		ptab = static_cast<mword*>(Kalloc::phys2virt (pdir[virt >> 20] & ~PAGE_MASK));
	}
	if(attr == 1){
		ptab[ (virt>>12) & 0xff ] = (phys & ~PAGE_MASK) + PAGE_ENRTY_FLAG_SVC;
	}else{
		ptab[ (virt>>12) & 0xff ] = (phys & ~PAGE_MASK) + PAGE_ENRTY_FLAG_ASID;//PAGE_ENRTY_FLAG_USR;
	}

	xil_printf("Ptab::insert_mapping: a 4K page is inserted at %x (%x) \n\r", virt, phys);

}

/*
 *  Create mapping for 1M section for a given page table
 *  attr = 0: full access (USER environment)
 * 	attr = 1: supervisor access only
 * 	attr = 2: device/FPGA sections
 */
void Ptab::insert_section (mword pdir, mword virt, mword phys, mword attr){
	mword* ptab = static_cast<mword*>(Kalloc::phys2virt(pdir));

	switch(attr){
		case 0:
			ptab[virt >> 20] = (phys & ~SECTION_MASK) | SECT_FLAG_USR;
			break;
		case 1:
			ptab[virt >> 20] = (phys & ~SECTION_MASK) | SECT_FLAG_SVC;
			break;
		case 2:
			ptab[virt >> 20] = (phys & ~SECTION_MASK) | SECT_FLAG_DEV;
			break;
	}
	xil_printf("Ptab::insert_section: a 1M section is inserted at %x (%x) \n\r", virt, phys);

}

/*
 * Remap a 1M section to a pre-indicated virtual address REMAP_SADDR
 * This section is set as accessible only in SVC mode
 */
void * Ptab::remap(mword addr){
	mword* pdir = static_cast<mword*>(Kalloc::phys2virt(reinterpret_cast<mword>(&KERN_PDIR)));
		/*
		 *  Unmap old 4M Section by the following flow:
		 *  1. flush the cache
		 *  2. unmap the PDIR entry
		 *  3. flush the tlb of the old mapping
		 */
	mword remap_end = REMAP_SADDR + SECTION_SIZE;

	//Cpu::flush_cache();
	Xil_DCacheFlush();

	pdir[REMAP_SADDR >> 20] = 0;
	Cpu::flush_tlb_range(REMAP_SADDR, remap_end);
	//Insert new mapping
	pdir[REMAP_SADDR >> 20] = (addr & ~SECTION_MASK) | SECT_FLAG_SVC;

	print("Ptab::remap: a 4M section is remapped\n\r");

	return reinterpret_cast<void *>(REMAP_SADDR + (addr & 0xfffff));

}

/*
 * Remap a 4M section to a pre-indicated virtual address USER_SPACE_REMAP
 * This section is set as accessible from user space
 */
void  Ptab::user_remap(mword addr){

	mword* pdir = static_cast<mword*>(Kalloc::phys2virt(reinterpret_cast<mword>(&KERN_PDIR)));

	mword remap_end = USER_SPACE_REMAP + SECTION_SIZE;

	//Cpu::flush_cache();
	Xil_DCacheFlush();

	pdir[USER_SPACE_REMAP >> 20] = 0;
	Cpu::flush_tlb_range(USER_SPACE_REMAP, remap_end);

	//Insert new mapping
	pdir[USER_SPACE_REMAP >> 20] = (addr & ~SECTION_MASK) | SECT_FLAG_USR;

	//print("Ptab::user_remap: a 4M section is remapped\n\r");

}

/* Insert a 4KB page into the virtual address space of user OS
 * The pdir table address of user OS is indicated by user_pdir
 *
 * attr = 0: normal user page
 * attr = 1: device interface page (R/W)
 * attr = 2: device interface page (R/O)
 */
void Ptab::insert_shadow_mapping(mword user_pdir, mword virt, mword phys, int attr){
	mword* pdir = static_cast<mword*>(Kalloc::phys2virt(user_pdir));
	mword* ptab;

	if( ( pdir[virt>>20] & 1 ) == 0){
		ptab = static_cast<mword*>(Kalloc::allocator.alloc_page(1, Kalloc::NOFILL));
		mword p = Kalloc::virt2phys (ptab);
		pdir[virt >> 20] = p + LV2_TABLE_ENRTY_FLAG;
	}else{
		ptab = static_cast<mword*>(Kalloc::phys2virt (pdir[virt >> 20] & ~PAGE_MASK));
	}

	switch(attr){
	case 0:
		ptab[ (virt>>12) & 0xff ] = (phys & ~PAGE_MASK) + PAGE_ENRTY_FLAG_ASID;
		break;
	case 1:
		ptab[ (virt>>12) & 0xff ] = (phys & ~PAGE_MASK) + PAGE_ENRTY_FLAG_DEV;
		break;
	case 2:
		ptab[ (virt>>12) & 0xff ] = (phys & ~PAGE_MASK) + PAGE_ENRTY_FLAG_DEV_RO;
		break;
	}
	//xil_printf("Ptab: a shadow 4K page is inserted at %x (%x) \n\r", virt, phys);
}

/* Functionality 1:
 * Delete a 4KB page from the virtual address space of user OS
 * NOTE: When deleting the page table, only the level-2 page entry is deleted, while the
 * 		level-1 page table entry is unchanged. This is because if the level-1 entry is cleared,
 * 		then next time another level-2 page table has to be inserted the next time when we try
 * 		to mapping this virtual address. As shown:
 *
 *	 	  L1 table        L2 table		 Phys space
 * 		|----------|	|----------|	|-----------|
 * 		|__________| 	|__________|	|			|
 * 	    | L1 Entry |	| L2 Entry |	|			|
 * 	    |----------|	|----------|	|-----------|
 * 	    |		   |	|		   |	|  4K Page  |
 * 	    |----------|	|----------|	|___________|
 *
 * 	    After deleting the 4K page:
 *
 * 	      L1 table        L2 table		 Phys space
 * 		|----------|	|----------|	|-----------|
 * 		|__________| 	|__________|	|			|
 * 	    | L1 Entry |	|   ZERO   |	|			|
 * 	    |----------|	|----------|	|-----------|
 * 	    |		   |	|		   |	|  4K Page  |
 * 	    |----------|	|----------|	|___________|
 *
 *	Functionality 2:
 *	Set VM's page attributes, which are coded as:
 *		---------------------------------------
 *		attr	Dscription
 *		----------------------------------------
 *		0		Delete page
 *		1		Set page Read-only to user level
 *		2		Set page Read-Write
 *		----------------------------------------
 */
void Ptab::set_page_attribute(mword user_pdir, mword virt, int attr, int asid){
	mword* pdir = static_cast<mword*>(Kalloc::phys2virt(user_pdir));
	mword* lv2_ptab;
	mword	tlb_flush_value;

	if( ( pdir[virt>>20] & 1 ) == 0)
		print("Ptab:: page does not exist. \n\r");
	else{
		lv2_ptab = static_cast<mword*>(Kalloc::phys2virt (pdir[virt >> 20] & ~PAGE_MASK));
		switch(attr){
			case 0:
				lv2_ptab[ (virt>>12) & 0xff ] = 0;
				xil_printf("Ptab: a 4K page is deleted at %x (%x) \n\r", virt);
				break;
			case 1:
				lv2_ptab[(virt>>12)&0xff] = lv2_ptab[(virt>>12)&0xff] & ~LV2_PAGE_ENTRY_AP_MASK | LV2_PAGE_ENTRY_AP_RO;
				break;
			case 2:
				lv2_ptab[(virt>>12)&0xff] = lv2_ptab[(virt>>12)&0xff] & ~LV2_PAGE_ENTRY_AP_MASK | LV2_PAGE_ENTRY_AP_RW;
				break;
			default:
				print("Ptab: Unknwon page attr \n\r");
		}

//		/* Invalidate entire unified TLB */
//		asm volatile ("mcr p15, 0, %0, c8, c7, 0" : : "r" (0));
//		/* Invalidate entire data TLB */
//		asm volatile ("mcr p15, 0, %0, c8, c6, 0" : : "r" (0));
//		/* Invalidate entire instruction TLB */
//		asm volatile ("mcr p15, 0, %0, c8, c5, 0" : : "r" (0));

		tlb_flush_value = (virt & (~(PAGE_MASK)))|(asid & 0xf);
		// Wrtite TLBIMVAIS register to invalidate unified TLB entry by ASID and MVA
		asm volatile (	"mcr	p15, 0, %0, c8, c3, 1"::"r"(tlb_flush_value):"cc");
		// Wrtite DTLBIMVA register to invalidate data TLB entry by ASID and MVA
		asm volatile (	"mcr	p15, 0, %0, c8, c6, 1"::"r"(tlb_flush_value):"cc");

		//		asm volatile (	"mcr	p15, 0, %0, c8, c7, 1"
		//					    		:
		//					    		:"r"(tlb_flush_value)
		//					    		:"cc"
		//					    );
	}
}
