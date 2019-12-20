/*
 * performance.c
 *
 *  Created on: 10 déc. 2014
 *      Author: XIATAN
 */

#include "performance.h"

/****************************************************************************
*
* Set the time in the Global Timer Counter Register.
*
* @param	Value to be written to the Global Timer Counter Register.
*
* @return	None.
*
* @note		In multiprocessor environment reference time will reset/lost for
*		all processors, when this function called by any one processor.
*
****************************************************************************/
void Xil_Time_SetTime(XTime Xtime)
{
	/* Disable Global Timer */
	Xil_Out32(GLOBAL_TMR_BASEADDR + GTIMER_CONTROL_OFFSET, 0x0);

	/* Updating Global Timer Counter Register */
	Xil_Out32(GLOBAL_TMR_BASEADDR + GTIMER_COUNTER_LOWER_OFFSET, (u32)Xtime);
	Xil_Out32(GLOBAL_TMR_BASEADDR + GTIMER_COUNTER_UPPER_OFFSET,
		(u32)(Xtime>>32));

	/* Enable Global Timer */
	Xil_Out32(GLOBAL_TMR_BASEADDR + GTIMER_CONTROL_OFFSET, 0x1);
}

void timeprint_low()
{
	unsigned long low;

	low = Xil_In32(GLOBAL_TMR_BASEADDR + GTIMER_COUNTER_LOWER_OFFSET);
	xil_printf ("%x", low);
}
