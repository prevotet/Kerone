/******************************************************************************
*
* (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
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
*******************************************************************************/
/*****************************************************************************/
/**
*
* @file sd.h
*
* This file contains the interface for the Secure Digital (SD) card
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver	Who	Date		Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a bh	03/10/11 Initial release
*
* </pre>
*
* @note
*
******************************************************************************/
#ifndef ___SD_H___
#define ___SD_H___


#ifdef __cplusplus
extern "C" {
#endif


/************************** Function Prototypes ******************************/

#ifdef XPAR_PS7_SD_0_S_AXI_BASEADDR
u32 InitSD();
u32 SDOpen(const char *filename, FIL *fil);
u32 SDAccess_read( u32 SourceAddress, u32 DestinationAddress, u32 LengthBytes, UINT * br, FIL *fil);
u32 SDAccess_write( u32 DestinationAddress, u32 SourceAddress, u32 LengthBytes, UINT *br, FIL* fil);
u32 SDClose(FIL* fil);
void ReleaseSD(FIL *fil);
BYTE SD_getc(FIL* f);
int SD_fseek(FIL* f, unsigned int offset, int whence);
char f_getc(FIL* f);

void ReleaseSD(FIL*);
#endif
/************************** Variable Definitions *****************************/
#ifdef __cplusplus
}
#endif


#endif /* ___SD_H___ */

