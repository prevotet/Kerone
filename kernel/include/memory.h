/*
 * Virtual memory layout
 *
 *  Created on: 28 nov. 2013
 *      Author: XIATAN
 */


#ifndef MEMORY_
#define MEMORY_


#define PDIR_SIZE		0x4000

#define PAGE_BITS       12
#define PAGE_SIZE       (1 << PAGE_BITS)
#define PAGE_MASK       (PAGE_SIZE - 1)
#define PAGE_SHIFT		12

#define SECTION_BITS    20
#define SECTION_SIZE    (1 << SECTION_BITS)
#define SECTION_MASK    (SECTION_SIZE - 1)
#define SECTION_SHIFT	12

#define LOAD_ADDR       0x200000

#define PM_DATA_ADDR	0xc1800000
#define PM_DATA_PHYS	0x10000000
#define PM_DATA_SIZE	0x400000 //4M
#define PM_DATA_E		PM_DATA_ADDR + PM_DATA_SIZE

#define LINK_ADDR       0xc0000000
#define KSTCK_ADDR      0xcffff000
#define KSTCK_E			KSTCK_ADDR + PAGE_SIZE // 0xD0000000

#define IRQ_STCK_ADDR   0xcfffe000
#define IRQ_STCK_E		IRQ_STCK_ADDR + PAGE_SIZE

#define UND_STCK_ADDR   0xcfffd000
#define UND_STCK_E		UND_STCK_ADDR + PAGE_SIZE

#define ABT_STCK_ADDR   0xcfffc000
#define ABT_STCK_E		ABT_STCK_ADDR + PAGE_SIZE

#define PRE_STCK_ADDR   0xcfffc000 //Currently prefetch and abort modes SHARE the same stack
#define PRE_STCK_E		PRE_STCK_ADDR + PAGE_SIZE

////The shared page between VMM and all VMs, currently holds:
////	--virtual CPSP (offset = 0),
////	--virtual SPSR (offset = 4),
//#define KERNEL_USER_SHARED		0xbffff000
//#define KERNEL_USER_SHARED_E 	0xc0000000
//#define VCPSR_OFFSET 	0
//#define VSPSR_OFFSET	4
////vCPSR only holds flags (non-APSR bits)
//#define VCPSR_NA		*(unsigned long *)(KERNEL_USER_SHARED + VCPSR_OFFSET)
//#define VSPSR			*(unsigned long *)(KERNEL_USER_SHARED + VSPSR_OFFSET)

// AS Local Range from 0xd0000000 to max
#define IOBMP_SADDR     0xd0000000
#define IOBMP_EADDR     (IOBMP_SADDR + PAGE_SIZE * 2)

//The reserved memory space for partial reconfig bit files
// NOTE: for DMA Tranfer, scu is not functioning; so virt addr is useless here
#define PRECO_PHYS_ADDR 0x2000000
#define PRECO_SADDR		0x2000000
#define PRECO_E			0x2100000

#define REMAP_SADDR      0xdf000000
#define USER_SPACE_REMAP 0xdf100000

/* I/O Peripheral */
#define	IOP_ADDR		0xe0000000
#define IOP_E			0xe0300000

/* PL AXI_GP Base Address */
#define PL_BASE_ADDR 	0xe0300000 //0x10000000
#define PL_E			0xe1000000 //0x11000000

/* SMC Memories */
#define SMC_ADDR		0xe1000000
#define SMC_E			0xe6000000

/* SLCR/PS/CPU  */
#define PS_ADDR			0xf8000000
#define PS_E			0xf9000000

/* Quai-SPI */
#define QSPI_ADDR		0xfc000000
#define QSPI_E			0xfe000000


/* 0x40000000 - 0x7fffffff (General Purpose Port #0 to the PL, M_AXI_GP0) */
#define	AXI_GP0_ADDR	0x40000000
#define AXI_GP0_E		0x80000000

//Vectors for exceptions, ARMV7 use high address vector table as default
#define VEC_BASE		0xffff0000


#endif /* MEMORY_ */
