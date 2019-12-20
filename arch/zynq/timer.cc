

#include "private_timer.h"

#include "xttcps.h"
#include "xscugic.h"
#include "xstatus.h"
#include "xil_io.h"
#include "performance.h"
#include "xuartps_hw.h"

#include "ec.h"
#include "vgic.h"
#include "memory.h"
#include "config.h"
#include "xil_types.h"
#include "custom_api.h"


#define CPU_CLOCK_RATIO_MODE_SELECT		  0xF80001C4
#define CPU_Clock_RatioMode 			*(volatile unsigned long *)(CPU_CLOCK_RATIO_MODE_SELECT)




void check_ClockRatio(){
	while(CPU_Clock_RatioMode != 1){
		print("CPU Clock Ratio Mode 4:2:1 (533MHz 267MHz 267MHz 133MHz) \n\r");
		CPU_Clock_RatioMode = 1;
	}
	 print("CPU Clock Ratio Mode 6:2:1 (667MHz 333MHz 222MHz 111MHz) \n\r");
}
