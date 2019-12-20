/*
 * performance.h
 *
 *  Created on: 10 déc. 2014
 *      Author: XIATAN
 */

//#include "../PM_Cfg.h"

//#if IS_PM_MEASURE

#ifndef PERFORMANCE_H_
#define PERFORMANCE_H_

#include "memory.h"

/**************************** Type Definitions *******************************/
typedef unsigned long long XTime;

typedef enum {
	virq_entry,
	world_switch,
	svc_entry,
	svc_exit,
	fpc_switch,
	rtos_revoke
}PMKernel;

typedef enum {
	pm_assign,
	pm_preempt,
	pm_irq_stop
}PM_PRR_MANAGER;

#define PMDATA_MAX 0x1000

/************************** Compilation information *****************************/
//#define PM_MEASUREM_NO_DCACHE 1
//#define PM_MEASUREM_NO_ICACHE 1
//#define PM_MEASUREM_FLUASH_TLB 1
/************************** Constant Definitions *****************************/
#define GLOBAL_TMR_BASEADDR               XPAR_GLOBAL_TMR_BASEADDR
#define GTIMER_COUNTER_LOWER_OFFSET       0x00
#define GTIMER_COUNTER_UPPER_OFFSET       0x04
#define GTIMER_CONTROL_OFFSET             0x08

#define PM_TimerCounter    				*(volatile unsigned long *)(GLOBAL_TMR_BASEADDR + GTIMER_COUNTER_LOWER_OFFSET)

/****************************************************************************/
#define PMDATA_BASE						PM_DATA_ADDR
#define PMDATA_MAX						PM_DATA_SIZE >> 2

#define PM_VIRQ_CNT						10
#define PM_RTOS_CNT						10
#define PM_SVC_CNT						10

//extern void check_ClockRatio();
extern void XTime_SetTime(XTime);
extern void PM_init();
extern void timeprint_low(PMKernel, unsigned long);
extern void timeprint_low();
extern void timeprint_svcexit(unsigned long);
extern void SaveData(unsigned long sizewords);
extern void PM_record(unsigned int time);

#endif /* PERFORMANCE_H_ */

//#endif
