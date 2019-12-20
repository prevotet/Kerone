/*
 * performance.c
 *
 *  Created on: 10 déc. 2014
 *      Author: XIATAN
 */

#include "include/performance.h"
#include "include/xil_io.h"
#include "../include/types.h"
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
void XTime_SetTime(XTime Xtime)
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
	mword low;

	low = Xil_In32(GLOBAL_TMR_BASEADDR + GTIMER_COUNTER_LOWER_OFFSET);
	xil_printf ("[%x]", low);
}

mword high_val = 0;
mword low_val = 0;
mword average_val = 0;
mword pmdata_count = 0;

void PM_record(unsigned int time)
{
	if((low_val > time) | (low_val == 0) ) low_val = time;
	if(high_val < time) high_val = time;
	average_val = average_val + time;

	pmdata_count++;

	//xil_printf("%d ", time);

	if(pmdata_count >= (PMDATA_MAX)){
		xil_printf("\n\r Evaluation (%d sampls): max:%d min:%d, avr:%d \n\r",
				pmdata_count, high_val, low_val, average_val/PMDATA_MAX);
		while(1);
	}
}
