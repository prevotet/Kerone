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
* @file sd.c
*
* Contains code for the SD card FLASH functionality.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver	Who	Date		Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a jz	04/28/11 Initial release
*
* </pre>
*
* @note
*
******************************************************************************/

/***************************** Include Files *********************************/
#include "xparameters.h"
//#include "fsbl.h"
#ifdef XPAR_PS7_SD_0_S_AXI_BASEADDR
#include "xstatus.h"
#include "xil_printf.h"
#include "ff.h"
#include "sd.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

u32 FlashReadBaseAddress = 0;


//static FIL fil1, fil2;		/* File object */
static FATFS fatfs;
static char buffer[32];
static char *boot_file = buffer;

 FIL fil1, fil2;		/* File object */

 unsigned int w_ptr=0, w_count=0;
 unsigned int r_ptr=0, r_count=0;

/******************************************************************************/
/**
*
* This function copies a memory region to another memory region
*
* @param 	s1 is starting address for destination
* @param 	s2 is starting address for the source
* @param 	n is the number of bytes to copy
*
* @return	Starting address for destination
*
****************************************************************************/
void *(memcpy_rom)(void * s1, const void * s2, u32 n)
{
	char *dst = (char *)s1;
	const char *src = (char *)s2;

	/*
	 * Loop and copy
	 */
	while (n-- != 0)
		*dst++ = *src++;
	return s1;
}
/******************************************************************************/
/**
*
* This function copies a string to another, the source string must be null-
* terminated.
*
* @param 	Dest is starting address for the destination string
* @param 	Src is starting address for the source string
*
* @return	Starting address for the destination string
*
****************************************************************************/
char *strcpy_rom(char *Dest, const char *Src)
{
	unsigned i;
	for (i=0; Src[i] != '\0'; ++i)
		Dest[i] = Src[i];
	Dest[i] = '\0';
	return Dest;
}


/******************************************************************************/
/******************************************************************************/
/**
*
* This function initializes the controller for the SD FLASH interface.
*
* @param	filename of the file that is to be used
*
* @return
*		- XST_SUCCESS if the controller initializes correctly
*		- XST_FAILURE if the controller fails to initializes correctly
*
* @note		None.
*
****************************************************************************/
u32 InitSD()
{

	FRESULT rc;

	/* Register volume work area, initialize device */
	rc = f_mount(0, &fatfs);
	//xil_printf("SD: rc= %.8x\n\r", rc);

	if (rc != FR_OK) {
		print("SD Init error. \n\r");
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}

/****************************************************************************/
u32 SDOpen(const char *filename, FIL *fil)
{

	FRESULT rc;

	//guest_CPU_IntDis();

	strcpy_rom(buffer, filename);
	boot_file = (char *)buffer;
	//FlashReadBaseAddress = XPAR_PS7_SD_0_S_AXI_BASEADDR;

	rc = f_open(fil, boot_file, FA_READ | FA_WRITE | FA_OPEN_ALWAYS);
	if (rc) {
		xil_printf("SD: Unable to open file %s: %d\n", boot_file, rc);
		return XST_FAILURE;
	}

	//guest_CPU_IntEn();

	return XST_SUCCESS;

}

/******************************************************************************/
/**
*
* This function provides the SD FLASH interface for the Simplified header
* functionality.
*
* @param	SourceAddress is address in FLASH data space
* @param	DestinationAddress is address in OCM data space
* @param	LengthBytes is the number of bytes to move
*
* @return
*		- XST_SUCCESS if the write completes correctly
*		- XST_FAILURE if the write fails to completes correctly
*
* @note		None.
*
****************************************************************************/
u32 SDAccess_read( u32 SourceAddress, u32 DestinationAddress, u32 LengthBytes, UINT * br, FIL *fil)
{

	FRESULT rc;	 /* Result code */
//	UINT br;

	//guest_CPU_IntDis();

	rc = f_lseek(fil, SourceAddress);
	if (rc) {
		xil_printf("SD: Unable to seek to %x\n", SourceAddress);
		return XST_FAILURE;
	}

	rc = f_read(fil, (void*)DestinationAddress, LengthBytes, br);

	if (rc) {
		xil_printf("*** ERROR: f_read returned %d\r\n", rc);
	}

	//guest_CPU_IntEn();

	return XST_SUCCESS;

} /* End of SDAccess */

/****************************************************************************/
u32 SDAccess_write( u32 DestinationAddress, u32 SourceAddress, u32 LengthBytes, UINT *br, FIL* fil)
{

	FRESULT rc;	 /* Result code */
	//UINT br;
	//guest_CPU_IntDis();

	rc = f_lseek(fil, DestinationAddress);
	if (rc) {
		xil_printf("SD: Unable to seek to %x\n", DestinationAddress);
		return XST_FAILURE;
	}

	rc = f_write(fil, (void*)SourceAddress, LengthBytes, br);

	if (rc) {
		xil_printf("*** ERROR: f_read returned %d\r\n", rc);
	}

	//guest_CPU_IntEn();

	return XST_SUCCESS;

} /* End of SDAccess */


/****************************************************************************/
u32 SDClose(FIL* fil)
{

	FRESULT rc;	 /* Result code */

	//guest_CPU_IntDis();

	rc = f_close(fil);
	if (rc) {
		xil_printf("SD: Unable to close file\n");
		return XST_FAILURE;
	}

	//guest_CPU_IntEn();

	return XST_SUCCESS;

} /* End of SDAccess */


/******************************************************************************/
/**
*
* This function closes the file object
*
* @param	None
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void ReleaseSD(FIL *fil) {

	f_close(fil);
	return;


}
#endif


BYTE SD_getc(FIL* f){
	BYTE data;

	SDAccess_read(r_ptr, (u32)&data, 1, (UINT*)&r_count, f);

	if(!r_count){
//		print("No data. \n\r");
		return 0;
	}

	r_ptr++;

	return data;
}

char f_getc(FIL* f){
	char data;
	BYTE s[2];
	UINT rc;

	f_read(f, s, 1, &rc);

	if(!rc){
		print("No data. \n\r");
		return 0;
	}

	data = s[0];

	return data;
}

int SD_fseek(FIL* f, unsigned int offset, int whence){
	switch(whence){
	case 0:
		r_ptr = offset;
		break;
	case 1:
		r_ptr = r_ptr + offset;
		break;
	default:
		print("fseef error. \n\r");
		return -1;
	}

	return 0;
}
