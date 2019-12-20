/*
 * performance.h
 *
 *  Created on: 10 déc. 2014
 *      Author: XIATAN
 */

#ifndef PERFORMANCE_H_
#define PERFORMANCE_H_

#include "xparameters_ps.h"
#include "xil_types.h"

/**************************** Type Definitions *******************************/
typedef unsigned long long XTime;

/************************** Constant Definitions *****************************/
#define GLOBAL_TMR_BASEADDR               XPAR_GLOBAL_TMR_BASEADDR
#define GTIMER_COUNTER_LOWER_OFFSET       0x00
#define GTIMER_COUNTER_UPPER_OFFSET       0x04
#define GTIMER_CONTROL_OFFSET             0x08
/****************************************************************************/
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
extern void Xil_Time_SetTime(XTime);
extern void timeprint_low();


#endif /* PERFORMANCE_H_ */
