/*
 * mibench_cfg.h
 *
 *  Created on: 24 juin 2015
 *      Author: XIATAN
 */

#include <guest_os_parameters.h>
#if IS_MIBENCH

#ifndef MIBENCH_CFG_H_
#define MIBENCH_CFG_H_

#include "performance.h"
/**************************** Type Definitions *******************************/

typedef unsigned long long XTime;

/*****************************************************************************/
#if IS_MIBENCH_GSM | IS_MIBENCH_ADPCM
	#define ITERATION 20
#elif IS_MIBENCH_SUSAN
    #define ITERATION 1
#else
	#define ITERATION 100
#endif

void mibench(){
    int testcnt = 0;
    XTime sum=0, average=0;
    unsigned long high=0, low=0;

    Xil_Time_SetTime(0);

 //   *(unsigned long*)(0xF8F00204) = 0;

 //   xil_printf("%x %x\n\r", *(unsigned long*)(0xF8F00200), *(unsigned long*)(0xF8F00204));


    for(testcnt = 0; testcnt < ITERATION; testcnt++)
#if IS_MIBENCH_FFT
    	task_mibench_fft();
#endif
#if IS_MIBENCH_GSM
    	gsm_bench();
#endif
#if IS_MIBENCH_ADPCM
    	admpc_bench();
#endif
#if IS_MIBENCH_CRC32
    	crc_bench();
#endif
#if IS_MIBENCH_BASICMATH
    	basicmath();
#endif
#if IS_MIBENCH_BITCNT
    	bitcount_test();
#endif
#if IS_MIBENCH_QSORT
    	qsort_test();
#endif
#if IS_MIBENCH_SUSAN
    	susan_test();
#endif
    low = *(unsigned long*)(0xF8F00200);
    high = *(unsigned long*)(0xF8F00204);
    sum = (((XTime) high) << 32) | (XTime) low;

    average = sum / ITERATION;

    xil_printf("Average cycles (%d times) is %d\n\r", ITERATION, average);
}



#endif /* MIBENCH_CFG_H_ */

#endif
