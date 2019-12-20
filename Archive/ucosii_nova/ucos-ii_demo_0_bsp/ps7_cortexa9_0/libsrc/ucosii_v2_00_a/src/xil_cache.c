/* $Id: xil_cache.c,v 1.1.4.1 2011/10/24 09:35:15 sadanan Exp $ */
/******************************************************************************
*
* (c) Copyright 2010 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xil_cache.c
*
* Contains required functions for the ARM cache functionality.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver    Who Date     Changes
* ----- ---- -------- -----------------------------------------------
* 1.00a  ecm 01/29/10 First release
* 1.00a  ecm 06/24/10 Moved the L1 and L2 specific function prototypes
*		      to xil_cache_mach.h to give access to sophisticated users
* 3.02a  sdm 04/07/11 Updated Flush/InvalidateRange APIs to flush/invalidate
*		      L1 and L2 caches in a single loop and used dsb, L2 sync
*		      at the end of the loop.
* 3.04a  sdm 01/02/12 Remove redundant dsb/dmb instructions in cache maintenance
*		      APIs.
* 3.06a  sgd 05/15/12 Corrected L1 and L2 cache invalidation order.
* 3.06a  asa 06/17/12 Reverted back the previous change to change the L1 and L2
*					  cache invalidation order.
* </pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xil_cache.h"
#include "xil_cache_l.h"
#include "xil_io.h"
#include "xpseudo_asm.h"
#include "xparameters.h"
#include "xreg_cortexa9.h"
#include "xl2cc.h"

/************************** Function Prototypes ******************************/

/****************************************************************************
*
* Enable the Data cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_DCacheEnable(void)
{
	Xil_L1DCacheEnable();
	Xil_L2CacheEnable();
}

/****************************************************************************
*
* Disable the Data cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_DCacheDisable(void)
{
	Xil_L2CacheDisable();
	Xil_L1DCacheDisable();
}

/****************************************************************************
*
* Invalidate the entire Data cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_DCacheInvalidate(void)
{
	Xil_L1DCacheInvalidate();
	Xil_L2CacheInvalidate();
}

/****************************************************************************
*
* Invalidate a Data cache line. If the byte specified by the address (adr)
* is cached by the Data cache, the cacheline containing that byte is
* invalidated.	If the cacheline is modified (dirty), the modified contents
* are lost and are NOT written to system memory before the line is
* invalidated.
*
* @param	Address to be flushed.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_DCacheInvalidateLine(unsigned int adr)
{
	Xil_L1DCacheInvalidateLine(adr);
	Xil_L2CacheInvalidateLine(adr);
}

/****************************************************************************
*
* Invalidate the Data cache for the given address range.
* If the bytes specified by the address (adr) are cached by the Data cache,
* the cacheline containing that byte is invalidated.	If the cacheline
* is modified (dirty), the modified contents are lost and are NOT
* written to system memory before the line is invalidated.
*
* @param	Start address of ragne to be invalidated.
* @param	Length of range to be invalidated in bytes.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_DCacheInvalidateRange(unsigned int adr, unsigned len)
{
	const unsigned cacheline = 32;
	unsigned int end;
	register unsigned int L2CCReg;
	volatile u32 *L2CCOffset = (volatile u32 *) (XPS_L2CC_BASEADDR +
				    XPS_L2CC_CACHE_INVLD_PA_OFFSET);

	if (len != 0) {
		/* Back the starting address up to the start of a cache line
		 * perform cache operations until adr+len
		 */
		end = adr + len;
		adr = adr & ~(cacheline - 1);

		/* Select L1 Data cache in CSSR */
		mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);

		while (adr < end) {
#ifdef __GNUC__
			/* Invalidate L1 Data cache line */
			__asm__ __volatile__("mcr " \
			XREG_CP15_INVAL_DC_LINE_MVA_POC :: "r" (adr));
#else
			{ volatile register unsigned int Reg
				__asm(XREG_CP15_INVAL_DC_LINE_MVA_POC);
			  Reg = adr; }
#endif
			/* Invalidate L2 cache line */
			*L2CCOffset = adr;
			adr += cacheline;
		}
	}

	/* Wait for L1 and L2 invalidate to complete */
	dsb();

	do {
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CACHE_SYNC_OFFSET);
	} while (L2CCReg != 0);
}

/****************************************************************************
*
* Flush the entire Data cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_DCacheFlush(void)
{
	Xil_L1DCacheFlush();
	Xil_L2CacheFlush();
}

/****************************************************************************
*
* Flush a Data cache line. If the byte specified by the address (adr)
* is cached by the Data cache, the cacheline containing that byte is
* invalidated.	If the cacheline is modified (dirty), the entire
* contents of the cacheline are written to system memory before the
* line is invalidated.
*
* @param	Address to be flushed.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_DCacheFlushLine(unsigned int adr)
{
	Xil_L1DCacheFlushLine(adr);
	Xil_L2CacheFlushLine(adr);
}

/****************************************************************************
* Flush the Data cache for the given address range.
* If the bytes specified by the address (adr) are cached by the Data cache,
* the cacheline containing that byte is invalidated.	If the cacheline
* is modified (dirty), the written to system memory first before the
* before the line is invalidated.
*
* @param	Start address of range to be flushed.
* @param	Length of range to be flushed in bytes.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_DCacheFlushRange(unsigned int adr, unsigned len)
{
	const unsigned cacheline = 32;
	unsigned int end;
	register unsigned int L2CCReg;
	volatile u32 *L2CCOffset = (volatile u32 *) (XPS_L2CC_BASEADDR +
				    XPS_L2CC_CACHE_INV_CLN_PA_OFFSET);

	if (len != 0) {
		/* Back the starting address up to the start of a cache line
		 * perform cache operations until adr+len
		 */
		end = adr + len;
		adr = adr & ~(cacheline - 1);

		/* Select cache L0 Data cache in CSSR */
		mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);

		while (adr < end) {
#ifdef __GNUC__
			/* Flush L1 Data cache line */
			__asm__ __volatile__("mcr " \
			XREG_CP15_CLEAN_INVAL_DC_LINE_MVA_POC :: "r" (adr));
#else
			{ volatile register unsigned int Reg
				__asm(XREG_CP15_CLEAN_INVAL_DC_LINE_MVA_POC);
			  Reg = adr; }
#endif
			/* Flush L2 cache line */
			*L2CCOffset = adr;
			adr += cacheline;
		}
	}

	/* Wait for L1 and L2 flush to complete */
	dsb();

	do {
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CACHE_SYNC_OFFSET);
	} while (L2CCReg != 0);
}

/****************************************************************************
*
* Store a Data cache line. If the byte specified by the address (adr)
* is cached by the Data cache and the cacheline is modified (dirty),
* the entire contents of the cacheline are written to system memory.
* After the store completes, the cacheline is marked as unmodified
* (not dirty).
*
* @param	Address to be stored.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_DCacheStoreLine(unsigned int adr)
{
	Xil_L1DCacheStoreLine(adr);
	Xil_L2CacheStoreLine(adr);
}

/****************************************************************************
*
* Enable the instruction cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_ICacheEnable(void)
{
	Xil_L1ICacheEnable();
	Xil_L2CacheEnable();
}

/****************************************************************************
*
* Disable the instruction cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_ICacheDisable(void)
{
	Xil_L2CacheDisable();
	Xil_L1ICacheDisable();
}

/****************************************************************************
*
* Invalidate the entire instruction cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_ICacheInvalidate(void)
{
	Xil_L1ICacheInvalidate();
	Xil_L2CacheInvalidate();
}

/****************************************************************************
*
* Invalidate an instruction cache line.	If the instruction specified by the
* parameter adr is cached by the instruction cache, the cacheline containing
* that instruction is invalidated.
*
* @param	None.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_ICacheInvalidateLine(unsigned int adr)
{
	Xil_L1ICacheInvalidateLine(adr);
	Xil_L2CacheInvalidateLine(adr);
}

/****************************************************************************
*
* Invalidate the instruction cache for the given address range.
* If the bytes specified by the address (adr) are cached by the Data cache,
* the cacheline containing that byte is invalidated. If the cacheline
* is modified (dirty), the modified contents are lost and are NOT
* written to system memory before the line is invalidated.
*
* @param	Start address of ragne to be invalidated.
* @param	Length of range to be invalidated in bytes.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_ICacheInvalidateRange(unsigned int adr, unsigned len)
{
	const unsigned cacheline = 32;
	unsigned int end;
	register unsigned int L2CCReg;
	volatile u32 *L2CCOffset = (volatile u32 *) (XPS_L2CC_BASEADDR +
				    XPS_L2CC_CACHE_INVLD_PA_OFFSET);

	if (len != 0) {
		/* Back the starting address up to the start of a cache line
		 * perform cache operations until adr+len
		 */
		end = adr + len;
		adr = adr & ~(cacheline - 1);

		/* Select cache L0 I-cache in CSSR */
		mtcp(XREG_CP15_CACHE_SIZE_SEL, 1);

		while (adr < end) {
#ifdef __GNUC__
			/* Invalidate L1 I-cache line */
			__asm__ __volatile__("mcr " \
			XREG_CP15_INVAL_IC_LINE_MVA_POU :: "r" (adr));
#else
			{ volatile register unsigned int Reg
				__asm(XREG_CP15_INVAL_IC_LINE_MVA_POU);
			  Reg = adr; }
#endif
			/* Invalidate L2 cache line */
			*L2CCOffset = adr;
			adr += cacheline;
		}
	}

	/* Wait for L1 and L2 invalidate to complete */
	dsb();

	do {
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CACHE_SYNC_OFFSET);
	} while (L2CCReg != 0);
}

/****************************************************************************
*
* Enable the level 1 Data cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L1DCacheEnable(void)
{
	register unsigned int CtrlReg;

	/* enable caches only if they are disabled */
#ifdef __GNUC__
	CtrlReg = mfcp(XREG_CP15_SYS_CONTROL);
#else
	{ volatile register unsigned int Reg __asm(XREG_CP15_SYS_CONTROL);
	  CtrlReg = Reg; }
#endif
	if (CtrlReg & XREG_CP15_CONTROL_C_BIT) {
		return;
	}

	/* clean and invalidate the Data cache */
	Xil_L1DCacheInvalidate();

	/* enable the Data cache */
	CtrlReg |= (XREG_CP15_CONTROL_C_BIT);

	mtcp(XREG_CP15_SYS_CONTROL, CtrlReg);
}

/****************************************************************************
*
* Disable the level 1 Data cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L1DCacheDisable(void)
{
	register unsigned int CtrlReg;

	/* clean and invalidate the Data cache */
	Xil_L1DCacheFlush();

#ifdef __GNUC__
	/* disable the Data cache */
	CtrlReg = mfcp(XREG_CP15_SYS_CONTROL);
#else
	{ volatile register unsigned int Reg __asm(XREG_CP15_SYS_CONTROL);
	  CtrlReg = Reg; }
#endif

	CtrlReg &= ~(XREG_CP15_CONTROL_C_BIT);

	mtcp(XREG_CP15_SYS_CONTROL, CtrlReg);
}

/****************************************************************************
*
* Invalidate the level 1 Data cache.
*
* @param	None.
*
* @return	None.
*
* @note		In Cortex A9, there is no cp instruction for invalidating
*		the whole D-cache. This function invalidates each line by
*		set/way.
*
****************************************************************************/
void Xil_L1DCacheInvalidate(void)
{
	register unsigned int CsidReg, C7Reg;
	unsigned int CacheSize, LineSize, NumWays;
	unsigned int Way, WayIndex, Set, SetIndex, NumSet;

	/* Select cache level 0 and D cache in CSSR */
	mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);
	isb();
#ifdef __GNUC__
	CsidReg = mfcp(XREG_CP15_CACHE_SIZE_ID);
#else
	{ volatile register unsigned int Reg __asm(XREG_CP15_CACHE_SIZE_ID);
	  CsidReg = Reg; }
#endif
	/* Determine Cache Size */
	CacheSize = (CsidReg >> 13) & 0x1FF;
	CacheSize +=1;
	CacheSize *=128;    /* to get number of bytes */

	/* Number of Ways */
	NumWays = (CsidReg & 0x3ff) >> 3;
	NumWays += 1;

	/* Get the cacheline size, way size, index size from csidr */
	LineSize = (CsidReg & 0x07) + 4;

	NumSet = CacheSize/NumWays;
	NumSet /= (1 << LineSize);

	Way = 0UL;
	Set = 0UL;

	/* Invalidate all the cachelines */
	for (WayIndex =0; WayIndex < NumWays; WayIndex++) {
		for (SetIndex =0; SetIndex < NumSet; SetIndex++) {
			C7Reg = Way | Set;
#ifdef __GNUC__
			/* Invalidate by Set/Way */
			__asm__ __volatile__("mcr " \
			XREG_CP15_INVAL_DC_LINE_SW :: "r" (C7Reg));
#else
			//mtcp(XREG_CP15_INVAL_DC_LINE_SW, C7Reg);
			{ volatile register unsigned int Reg
				__asm(XREG_CP15_INVAL_DC_LINE_SW);
			  Reg = C7Reg; }
#endif
			Set += (1 << LineSize);
		}
		Way += 0x40000000;
	}

	/* Wait for L1 invalidate to complete */
	dsb();
}

/****************************************************************************
*
* Invalidate a level 1 Data cache line. If the byte specified by the address
* (Addr) is cached by the Data cache, the cacheline containing that byte is
* invalidated.	If the cacheline is modified (dirty), the modified contents
* are lost and are NOT written to system memory before the line is
* invalidated.
*
* @param	Address to be flushed.
*
* @return	None.
*
* @note		The bottom 5 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L1DCacheInvalidateLine(unsigned int adr)
{
	mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);
	mtcp(XREG_CP15_INVAL_DC_LINE_MVA_POC, (adr & (~0x1F)));
	/* Wait for L1 invalidate to complete */
	dsb();
}

/****************************************************************************
*
* Invalidate the level 1 Data cache for the given address range.
* If the bytes specified by the address (adr) are cached by the Data cache,
* the cacheline containing that byte is invalidated. If the cacheline
* is modified (dirty), the modified contents are lost and are NOT
* written to system memory before the line is invalidated.
*
* @param	Start address of range to be invalidated.
* @param	Length of range to be invalidated in bytes.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L1DCacheInvalidateRange(unsigned int adr, unsigned len)
{
	const unsigned cacheline = 32;
	unsigned int end;

	if (len != 0) {
		/* Back the starting address up to the start of a cache line
		 * perform cache operations until adr+len
		 */
		end = adr + len;
		adr = adr & ~(cacheline - 1);

		/* Select cache L0 D-cache in CSSR */
		mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);

		while (adr < end) {
#ifdef __GNUC__
			__asm__ __volatile__("mcr " \
			XREG_CP15_INVAL_DC_LINE_MVA_POC :: "r" (adr));
#else
			//mtcp(XREG_CP15_INVAL_DC_LINE_MVA_POC, adr);
			{ volatile register unsigned int Reg
				__asm(XREG_CP15_INVAL_DC_LINE_MVA_POC);
			  Reg = adr; }
#endif
			adr += cacheline;
		}
	}

	/* Wait for L1 invalidate to complete */
	dsb();
}

/****************************************************************************
*
* Flush the level 1 Data cache.
*
* @param	None.
*
* @return	None.
*
* @note		In Cortex A9, there is no cp instruction for flushing
*		the whole D-cache. Need to flush each line.
*
****************************************************************************/
void Xil_L1DCacheFlush(void)
{
	register unsigned int CsidReg, C7Reg;
	unsigned int CacheSize, LineSize, NumWays;
	unsigned int Way, WayIndex, Set, SetIndex, NumSet;

	/* Select cache level 0 and D cache in CSSR */
	mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);
	isb();
#ifdef __GNUC__
	CsidReg = mfcp(XREG_CP15_CACHE_SIZE_ID);
#else
	{ volatile register unsigned int Reg __asm(XREG_CP15_CACHE_SIZE_ID);
	  CsidReg = Reg; }
#endif

	/* Determine Cache Size */

	CacheSize = (CsidReg >> 13) & 0x1FF;
	CacheSize +=1;
	CacheSize *=128;    /* to get number of bytes */

	/* Number of Ways */
	NumWays = (CsidReg & 0x3ff) >> 3;
	NumWays += 1;

	/* Get the cacheline size, way size, index size from csidr */
	LineSize = (CsidReg & 0x07) + 4;

	NumSet = CacheSize/NumWays;
	NumSet /= (1 << LineSize);

	Way = 0UL;
	Set = 0UL;

	/* Invalidate all the cachelines */
	for (WayIndex =0; WayIndex < NumWays; WayIndex++) {
		for (SetIndex =0; SetIndex < NumSet; SetIndex++) {
			C7Reg = Way | Set;
			/* Flush by Set/Way */
#ifdef __GNUC__
			__asm__ __volatile__("mcr " \
			XREG_CP15_CLEAN_INVAL_DC_LINE_SW :: "r" (C7Reg));
#else
			{ volatile register unsigned int Reg
				__asm(XREG_CP15_CLEAN_INVAL_DC_LINE_SW);
			  Reg = C7Reg; }
#endif
			Set += (1 << LineSize);
		}
		Way += 0x40000000;
	}

	/* Wait for L1 flush to complete */
	dsb();
}

/****************************************************************************
*
* Flush a level 1 Data cache line. If the byte specified by the address (adr)
* is cached by the Data cache, the cacheline containing that byte is
* invalidated.	If the cacheline is modified (dirty), the entire
* contents of the cacheline are written to system memory before the
* line is invalidated.
*
* @param	Address to be flushed.
*
* @return	None.
*
* @note		The bottom 5 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L1DCacheFlushLine(unsigned int adr)
{
	mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);
	mtcp(XREG_CP15_CLEAN_INVAL_DC_LINE_MVA_POC, (adr & (~0x1F)));
	/* Wait for L1 flush to complete */
	dsb();
}

/****************************************************************************
* Flush the level 1  Data cache for the given address range.
* If the bytes specified by the address (adr) are cached by the Data cache,
* the cacheline containing that byte is invalidated.	If the cacheline
* is modified (dirty), the written to system memory first before the
* before the line is invalidated.
*
* @param	Start address of range to be flushed.
* @param	Length of range to be flushed in bytes.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L1DCacheFlushRange(unsigned int adr, unsigned len)
{
	const unsigned cacheline = 32;
	unsigned int end;

	if (len != 0) {
		/* Back the starting address up to the start of a cache line
		 * perform cache operations until adr+len
		 */
		end = adr + len;
		adr = adr & ~(cacheline - 1);

		/* Select cache L0 D-cache in CSSR */
		mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);

		while (adr < end) {
#ifdef __GNUC__
			__asm__ __volatile__("mcr " \
			XREG_CP15_CLEAN_INVAL_DC_LINE_MVA_POC :: "r" (adr));
#else
			//mtcp(XREG_CP15_CLEAN_INVAL_DC_LINE_MVA_POC, adr);
			{ volatile register unsigned int Reg
				__asm(XREG_CP15_CLEAN_INVAL_DC_LINE_MVA_POC);
			  Reg = adr; }
#endif
			adr += cacheline;
		}
	}

	/* Wait for L1 flush to complete */
	dsb();
}

/****************************************************************************
*
* Store a level 1  Data cache line. If the byte specified by the address (adr)
* is cached by the Data cache and the cacheline is modified (dirty),
* the entire contents of the cacheline are written to system memory.
* After the store completes, the cacheline is marked as unmodified
* (not dirty).
*
* @param	Address to be stored.
*
* @return	None.
*
* @note		The bottom 5 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L1DCacheStoreLine(unsigned int adr)
{
	mtcp(XREG_CP15_CACHE_SIZE_SEL, 0);
	mtcp(XREG_CP15_CLEAN_DC_LINE_MVA_POC, (adr & (~0x1F)));
	/* Wait for L1 store to complete */
	dsb();
}

/****************************************************************************
*
* Enable the level 1 instruction cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L1ICacheEnable(void)
{
	register unsigned int CtrlReg;

	/* enable caches only if they are disabled */
#ifdef __GNUC__
	CtrlReg = mfcp(XREG_CP15_SYS_CONTROL);
#else
	{ volatile register unsigned int Reg __asm(XREG_CP15_SYS_CONTROL);
	  CtrlReg = Reg; }
#endif
	if (CtrlReg & XREG_CP15_CONTROL_I_BIT) {
		return;
	}

	/* invalidate the instruction cache */
	mtcp(XREG_CP15_INVAL_IC_POU, 0);

	/* enable the instruction cache */
	CtrlReg |= (XREG_CP15_CONTROL_I_BIT);

	mtcp(XREG_CP15_SYS_CONTROL, CtrlReg);
}

/****************************************************************************
*
* Disable level 1 the instruction cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L1ICacheDisable(void)
{
	register unsigned int CtrlReg;

	dsb();

	/* invalidate the instruction cache */
	mtcp(XREG_CP15_INVAL_IC_POU, 0);

	/* disable the instruction cache */
#ifdef __GNUC__
	CtrlReg = mfcp(XREG_CP15_SYS_CONTROL);
#else
	{ volatile register unsigned int Reg __asm(XREG_CP15_SYS_CONTROL);
	  CtrlReg = Reg; }
#endif
	CtrlReg &= ~(XREG_CP15_CONTROL_I_BIT);

	mtcp(XREG_CP15_SYS_CONTROL, CtrlReg);
}

/****************************************************************************
*
* Invalidate the entire level 1 instruction cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L1ICacheInvalidate(void)
{
	mtcp(XREG_CP15_CACHE_SIZE_SEL, 1);
	/* invalidate the instruction cache */
	mtcp(XREG_CP15_INVAL_IC_POU, 0);
	/* Wait for L1 invalidate to complete */
	dsb();
}

/****************************************************************************
*
* Invalidate a level 1  instruction cache line.	If the instruction specified by
* the parameter adr is cached by the instruction cache, the cacheline containing
* that instruction is invalidated.
*
* @param	None.
*
* @return	None.
*
* @note		The bottom 5 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L1ICacheInvalidateLine(unsigned int adr)
{
	mtcp(XREG_CP15_CACHE_SIZE_SEL, 1);
	mtcp(XREG_CP15_INVAL_IC_LINE_MVA_POU, (adr & (~0x1F)));
	/* Wait for L1 invalidate to complete */
	dsb();
}

/****************************************************************************
*
* Invalidate the level 1 instruction cache for the given address range.
* If the bytes specified by the address (adr) are cached by the Data cache,
* the cacheline containing that byte is invalidated.	If the cacheline
* is modified (dirty), the modified contents are lost and are NOT
* written to system memory before the line is invalidated.
*
* @param	Start address of range to be invalidated.
* @param	Length of range to be invalidated in bytes.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L1ICacheInvalidateRange(unsigned int adr, unsigned len)
{
	const unsigned cacheline = 32;
	unsigned int end;

	if (len != 0) {
		/* Back the starting address up to the start of a cache line
		 * perform cache operations until adr+len
		 */
		end = adr + len;
		adr = adr & ~(cacheline - 1);

		/* Select cache L0 I-cache in CSSR */
		mtcp(XREG_CP15_CACHE_SIZE_SEL, 1);

		while (adr < end) {
#ifdef __GNUC__
			__asm__ __volatile__("mcr " \
			XREG_CP15_INVAL_IC_LINE_MVA_POU :: "r" (adr));
#else
			//mtcp(XREG_CP15_INVAL_IC_LINE_MVA_POU, adr);
			{ volatile register unsigned int Reg
				__asm(XREG_CP15_INVAL_IC_LINE_MVA_POU);
			  Reg = adr; }
#endif
			adr += cacheline;
		}
	}

	/* Wait for L1 invalidate to complete */
	dsb();
}

/****************************************************************************
*
* Enable the L2 cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L2CacheEnable(void)
{
	register unsigned int L2CCReg;

	L2CCReg = Xil_In32(XPS_L2CC_BASEADDR + XPS_L2CC_CNTRL_OFFSET);

	/* only enable if L2CC is currently disabled */
	if ((L2CCReg & 0x01) == 0) {
		/* set up the way size and latencies */
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_AUX_CNTRL_OFFSET);
		L2CCReg &= XPS_L2CC_AUX_REG_ZERO_MASK;
		L2CCReg |= XPS_L2CC_AUX_REG_DEFAULT_MASK;
		Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_AUX_CNTRL_OFFSET,
			  L2CCReg);
		Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_TAG_RAM_CNTRL_OFFSET,
			  XPS_L2CC_TAG_RAM_DEFAULT_MASK);
		Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_DATA_RAM_CNTRL_OFFSET,
			  XPS_L2CC_DATA_RAM_DEFAULT_MASK);

		/* Clear the pending interrupts */
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_ISR_OFFSET);
		Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_IAR_OFFSET, L2CCReg);

		/* Enable the L2CC */
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CNTRL_OFFSET);
		Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_CNTRL_OFFSET,
			  (L2CCReg | (0x01)));
	}

	/* synchronize the processor */
	dsb();
}

/****************************************************************************
*
* Disable the L2 cache.
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L2CacheDisable(void)
{
	register unsigned int L2CCReg;

	/* Flush the caches */
	Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_CACHE_INV_CLN_WAY_OFFSET,
		  0x0000FFFF);

	/* Wait for the flush to complete */
	do {
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CACHE_SYNC_OFFSET);
	} while (L2CCReg != 0);

	/* synchronize the processor */
	dsb();

	/* Disable the L2CC */
	L2CCReg = Xil_In32(XPS_L2CC_BASEADDR + XPS_L2CC_CNTRL_OFFSET);
	Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_CNTRL_OFFSET,
		  (L2CCReg & (~0x01)));
}

/****************************************************************************
*
* Invalidate the L2 cache. If the byte specified by the address (adr)
* is cached by the Data cache, the cacheline containing that byte is
* invalidated.	If the cacheline is modified (dirty), the modified contents
* are lost and are NOT written to system memory before the line is
* invalidated.
*
* @param	Address to be flushed.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L2CacheInvalidate(void)
{
	register unsigned int L2CCReg;

	/* Invalidate the caches */
	Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_CACHE_INVLD_WAY_OFFSET,
		  0x0000FFFF);

	/* Wait for the invalidate to complete */
	do {
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CACHE_SYNC_OFFSET);
	} while (L2CCReg != 0);

	/* synchronize the processor */
	dsb();
}

/****************************************************************************
*
* Invalidate a level 2 cache line. If the byte specified by the address (adr)
* is cached by the Data cache, the cacheline containing that byte is
* invalidated.	If the cacheline is modified (dirty), the modified contents
* are lost and are NOT written to system memory before the line is
* invalidated.
*
* @param	Address to be flushed.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L2CacheInvalidateLine(unsigned int adr)
{
	Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_CACHE_INVLD_PA_OFFSET, adr);

	/* synchronize the processor */
	dsb();
}

/****************************************************************************
*
* Invalidate the level 2 cache for the given address range.
* If the bytes specified by the address (adr) are cached by the Data cache,
* the cacheline containing that byte is invalidated.	If the cacheline
* is modified (dirty), the modified contents are lost and are NOT
* written to system memory before the line is invalidated.
*
* @param	Start address of ragne to be invalidated.
* @param	Length of range to be invalidated in bytes.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L2CacheInvalidateRange(unsigned int adr, unsigned len)
{
	const unsigned cacheline = 32;
	unsigned int end;
	register unsigned int L2CCReg;
	volatile u32 *L2CCOffset = (volatile u32 *) (XPS_L2CC_BASEADDR +
				    XPS_L2CC_CACHE_INVLD_PA_OFFSET);

	if (len != 0) {
		/* Back the starting address up to the start of a cache line
		 * perform cache operations until adr+len
		 */
		end = adr + len;
		adr = adr & ~(cacheline - 1);

		while (adr < end) {
			*L2CCOffset = adr;
			adr += cacheline;
		}
	}

	/* Wait for L2 invalidate to complete */
	do {
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CACHE_SYNC_OFFSET);
	} while (L2CCReg != 0);

	/* synchronize the processor */
	dsb();
}

/****************************************************************************
*
* Flush the L2 cache. If the byte specified by the address (adr)
* is cached by the Data cache, the cacheline containing that byte is
* invalidated. If the cacheline is modified (dirty), the entire
* contents of the cacheline are written to system memory before the
* line is invalidated.
*
* @param	Address to be flushed.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L2CacheFlush(void)
{
	register unsigned int L2CCReg;

	/* Flush the caches */
	Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_CACHE_INV_CLN_WAY_OFFSET,
		  0x0000FFFF);

	/* Wait for the flush to complete */
	do {
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CACHE_SYNC_OFFSET);
	} while (L2CCReg != 0);

	/* synchronize the processor */
	dsb();
}

/****************************************************************************
*
* Flush a level 1 cache line. If the byte specified by the address (adr)
* is cached by the Data cache, the cacheline containing that byte is
* invalidated. If the cacheline is modified (dirty), the entire
* contents of the cacheline are written to system memory before the
* line is invalidated.
*
* @param	Address to be flushed.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L2CacheFlushLine(unsigned int adr)
{
	Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_CACHE_INV_CLN_PA_OFFSET,
		  adr);

	/* synchronize the processor */
	dsb();
}

/****************************************************************************
* Flush the level 2 cache for the given address range.
* If the bytes specified by the address (adr) are cached by the Data cache,
* the cacheline containing that byte is invalidated.	If the cacheline
* is modified (dirty), the written to system memory first before the
* before the line is invalidated.
*
* @param	Start address of range to be flushed.
* @param	Length of range to be flushed in bytes.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void Xil_L2CacheFlushRange(unsigned int adr, unsigned len)
{
	const unsigned cacheline = 32;
	unsigned int end;
	register unsigned int L2CCReg;
	volatile u32 *L2CCOffset = (volatile u32 *) (XPS_L2CC_BASEADDR +
				    XPS_L2CC_CACHE_INV_CLN_PA_OFFSET);

	if (len != 0) {
		/* Back the starting address up to the start of a cache line
		 * perform cache operations until adr+len
		 */
		end = adr + len;
		adr = adr & ~(cacheline - 1);

		while (adr < end) {
			*L2CCOffset = adr;
			adr += cacheline;
		}
	}

	/* Wait for L2 invalidate to complete */
	do {
		L2CCReg = Xil_In32(XPS_L2CC_BASEADDR +
				   XPS_L2CC_CACHE_SYNC_OFFSET);
	} while (L2CCReg != 0);

	/* synchronize the processor */
	dsb();
}

/****************************************************************************
*
* Store a level 2 cache line. If the byte specified by the address (adr)
* is cached by the Data cache and the cacheline is modified (dirty),
* the entire contents of the cacheline are written to system memory.
* After the store completes, the cacheline is marked as unmodified
* (not dirty).
*
* @param	Address to be stored.
*
* @return	None.
*
* @note		The bottom 4 bits are set to 0, forced by architecture.
*
****************************************************************************/
void Xil_L2CacheStoreLine(unsigned int adr)
{
	Xil_Out32(XPS_L2CC_BASEADDR + XPS_L2CC_CACHE_CLEAN_PA_OFFSET, adr);

	/* synchronize the processor */
	dsb();
}
