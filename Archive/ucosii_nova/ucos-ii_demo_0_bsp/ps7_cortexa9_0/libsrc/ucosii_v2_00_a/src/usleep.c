/* $Id: usleep.c,v 1.1.4.1 2011/10/24 09:35:15 sadanan Exp $ */
/******************************************************************************
*
* (c) Copyright 2009-2010 Xilinx, Inc. All rights reserved.
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
* @file usleep.c
*
* This function provides a microsecond delay using the internal cycle count
* register in the ARM Cortex A9.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who      Date     Changes
* ----- -------- -------- -----------------------------------------------
* 1.00a ecm/sdm  11/11/09 First release
* 3.06a sgd      05/15/12 Upadted micro sleep function to make use Global Timer
* 3.06a asa		 06/17/12 Revrted back earlier changes to use Global Timer.
* </pre>
*
******************************************************************************/
/***************************** Include Files *********************************/

#include "sleep.h"
#include "xparameters.h"
#include "xpseudo_asm.h"
#include "xreg_cortexa9.h"

#define COUNTS_PER_SECOND          (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / 64)

/*****************************************************************************/
/**
*
* This is not implemented .
*
* @param    nanoseconds
*
* @return   None
*
* @note     None.
*
****************************************************************************/
void nanosleep(unsigned int nanoseconds){
	/* not implemented */
	(void)nanoseconds;
}

/*****************************************************************************/
/**
*
* This is the main function for the Interrupt Controller example .
*
* @param	useconds requested
*
* @return	0 if the delay can be achieved, -1 if the requested delay
*		is out of range
*
* @note		None.
*
****************************************************************************/
int usleep(unsigned int useconds){
	unsigned long tEnd, tCur;
	unsigned int reg;

	/* check requested delay for out of range */

	if (useconds == 0) {
		return 0;
	}

	if (((COUNTS_PER_SECOND / 1000000) > 0) &&
	    (useconds > (0xFFFFFFFF / (COUNTS_PER_SECOND / 1000000)))) {
		return -1;
	}

	/* enable the counter */
	mtcp(XREG_CP15_PERF_MONITOR_CTRL, 1);
#ifdef __GNUC__
	reg = mfcp(XREG_CP15_COUNT_ENABLE_SET);
#else
	{ register unsigned int Reg __asm(XREG_CP15_COUNT_ENABLE_SET);
	  reg = Reg; }
#endif
	mtcp(XREG_CP15_COUNT_ENABLE_SET, reg | 0x80000000);

#ifdef __GNUC__
	tCur = mfcp(XREG_CP15_PERF_CYCLE_COUNTER);
#else
	{ register unsigned int Reg __asm(XREG_CP15_PERF_CYCLE_COUNTER);
	  tCur = Reg; }
#endif
	tEnd = tCur + (useconds * (COUNTS_PER_SECOND / 1000000));

	do {
#ifdef __GNUC__
		tCur = mfcp(XREG_CP15_PERF_CYCLE_COUNTER);
#else
		{ register unsigned int Reg __asm(XREG_CP15_PERF_CYCLE_COUNTER);
		  tCur = Reg; }
#endif
	} while (tCur < tEnd);

	return 0;
}
