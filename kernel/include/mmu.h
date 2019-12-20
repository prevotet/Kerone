/*
 * mmu.h
 *
 *  Created on: 29 nov. 2013
 *      Author: XIATAN
 */

#ifndef MMU_H_
#define MMU_H_

#define SECT_FLAG_SVC		0x1140E		/* 	Bit[19:0]    Full access
											---------------------------
											nG			| 0
											domain 		| check
											APX,AP[1:0] | 001
											S 			| 1
											TEX 		| 001	|\ Outer/Inner
											C 			| 1		| }Write-Back and Write-Alloc
											B 			| 1		|/
											---------------------------*/
#define SECT_FLAG_USR		0x11C0E		/* 	Bit[19:0]    Full access
											---------------------------
											nG			| 0
											domain 		| check
											APX,AP[1:0] | 011
											S 			| 1
											TEX 		| 001
											C 			| 1
											B 			| 1
											---------------------------*/
#define SECT_FLAG_DEV		0x00C06		/* 	Bit[19:0]    Device access (Sharable device)
											---------------------------
											nG			| 0		|
											domain 		| check	|
											APX,AP[1:0] | 011	|
											S 			| 0		|Ignored for Device type
											TEX 		| 000	|\
											C 			| 0		| }Sharable device
											B 			| 1		|/ Non-cacheable
											---------------------------*/

#define LV2_TABLE_ENRTY_FLAG 0x001 	// Bit[9:0]
									// Though set to 0x011 in linux example, this flag
									// is believed to be 0x001 because bit[4:2] is SBZ


#define PAGE_ENRTY_FLAG_SVC 0x45E		/* 	Bit[11:0] 	PL1 access
											---------------------------
											nG			| 0
											S			| 1
											domain 		| check
											APX,AP[1:0] | 001
											TEX			| 001
											C			| 1
											B			| 1
											XN			| 0
											---------------------------*/
#define PAGE_ENRTY_FLAG_USR 0x47E		/* 	Bit[11:0] 	Full access
											-----------------------
											nG			| 0
											S			| 1
											domain 		| check
											APX,AP[1:0] | 011
											TEX			| 001
											C			| 1
											B			| 1
											XN			| 0
											---------------------------*/
#define PAGE_ENRTY_FLAG_ASID 0xC7E		/* 	Bit[11:0] 	Full access (With ASID Flag)
											-----------------------
											nG			| 1		| Enable ASID Flag
											S			| 1
											domain 		| check
											APX,AP[1:0] | 011
											TEX			| 001
											C			| 1
											B			| 1
											XN			| 0
											---------------------------*/

#define PAGE_ENRTY_FLAG_DEV  0x836		/* 	Bit[11:0] 	Full access (Sharable device)
											-----------------------
											nG			| 1		|
											S			| 0		| Ignored for Device type
											domain 		| check	|
											APX,AP[1:0] | 011	|
											TEX			| 000	|\
											C			| 0		| } Sharable device:
											B			| 1		|/  Non-Cacheable
											XN			| 0		|
											---------------------------*/

#define PAGE_ENRTY_FLAG_DEV_RO 0x826	/* 	Bit[11:0] 	Full access (Sharable device)
											-----------------------
											nG			| 1		|
											S			| 0		| Ignored for Device type
											domain 		| check	|
											APX,AP[1:0] | 010	|
											TEX			| 000	|\
											C			| 0		| } Sharable device:
											B			| 1		|/  Non-Cacheable
											XN			| 0		|
											---------------------------*/

#define	LV2_PAGE_ENTRY_AP_RO	0x00000020	/* APX,AP[1:0] 	011 */
#define	LV2_PAGE_ENTRY_AP_RW	0x00000030 	/* APX,AP[1:0]	010 */
#define LV2_PAGE_ENTRY_AP_MASK	0x00000230

#define TTBR_FLAG		0x004A 		/*	Bit[13:0]
										--------------------------------
 	 	 	 	 	 	 	 	 	 	NOS			| 0
 	 	 	 	 	 	 	 	 	 	RGN[1:0]	| 01	Outer Write-Back Write-Alloc
 	 	 	 	 	 	 	 	 	 	IRGN[1:0]	| 01	Inner Write-Back Write-Alloc
 	 	 	 	 	 	 	 	 	 	IMP			| 0
 	 	 	 	 	 	 	 	 	 	S			| 1		Sharable
 	 	 	 	 	 	 	 	 	 	---------------------------------*/
//#define TTBR_FLAG		0x005B 		//Bit[13:0]

//#define PAGE_MASK		0xFFF		//Mask LSB 12 bits

#define DACR			0x00000015 //00 00 00 00 00 00 00 00 00 00 00 00 00 01 01 01
//#define DACR			0xFFFFFFFF
//#define SCTLR			0x18C5387D
#define SCTLR			0x08C5387D	/* 	SCTLR
										------------------------------
										TRE		| 0		TEX Remap Disabled
										NMFI	| 1		Non-maskable FIQ
 	 	 	 	 	 	 	 	 	 	-------------------------------*/

//#define SCTLR			0x08C5107D

#endif /* MMU_H_ */
