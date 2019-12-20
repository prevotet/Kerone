/*
 * performance.c
 *
 *  Created on: 10 déc. 2014
 *      Author: XIATAN
 */

#include "../include/config.h"

#if IS_PM_MEASURE

#include "include/xil_io.h"
#include "include/xil_cache.h"
#include "../include/types.h"
#include "../include/ptab.h"
#include "../include/kalloc.h"
#include "sd/sd.h"
#include "../cpu/cpu.h"
#include "include/performance.h"

extern mword KERN_PDIR;

PMKernel PM_FLAG;


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
#ifdef PM_MEASUREM_NO_DCACHE
	Xil_DCacheDisable();
#endif
#ifdef PM_MEASUREM_NO_ICACHE
	Xil_ICacheDisable();
#endif
#ifdef PM_MEASUREM_FLUASH_TLB
	Cpu::flush_tlb_all();
#endif
	/* Disable Global Timer */
	Xil_Out32(GLOBAL_TMR_BASEADDR + GTIMER_CONTROL_OFFSET, 0x0);

	/* Updating Global Timer Counter Register */
	Xil_Out32(GLOBAL_TMR_BASEADDR + GTIMER_COUNTER_LOWER_OFFSET, (u32)Xtime);
	Xil_Out32(GLOBAL_TMR_BASEADDR + GTIMER_COUNTER_UPPER_OFFSET,
		(u32)(Xtime>>32));

	/* Enable Global Timer */
	Xil_Out32(GLOBAL_TMR_BASEADDR + GTIMER_CONTROL_OFFSET, 0x1);
}

void PM_init(){
	print("\n\r");
	int size = (mword)PM_DATA_SIZE >> SECTION_BITS; // The number of (1M) sections

	mword * pm = (mword *)PMDATA_BASE;

	print("Performance Init: \n\r");

	for(int i=0; i<size; i++)
		Ptab::insert_section(reinterpret_cast<mword>(&KERN_PDIR), (PM_DATA_ADDR + i*SECTION_SIZE), (PM_DATA_PHYS + i*SECTION_SIZE), 0);

	/* Clear these sections */
	for (mword a = 0; a < PMDATA_MAX; pm[a++] = 0) ;

	xil_printf(" -virq_entry:%d\n\r -world_switch:%d\n\r -svc_entry:%d\n\r -svc_exit:%d\n\r -fpc_switch:%d\n\r -rtos_revoke:%d\n\r",
			virq_entry,world_switch,svc_entry,svc_exit,fpc_switch,rtos_revoke);
}

mword pmdata_count = 0;
mword virq_count = 0;
mword rtos_revoke_count = 0;
mword svcentry_count = 0;

void timeprint_low(PMKernel type, mword low)
{
	mword data;

	mword * pm = (mword *)PMDATA_BASE;


	if( (type == virq_entry) & ( virq_count < PM_VIRQ_CNT ) ){
		virq_count++;
		return;
	}

	if( (type == rtos_revoke) & ( rtos_revoke_count < PM_RTOS_CNT ) ){
		rtos_revoke_count++;
		return;
	}

	if( (type == svc_entry) & ( svcentry_count < PM_SVC_CNT ) ){
		svcentry_count++;
		return;
	}

	data = (type<<28) | (low & 0x0fffffff ) ;
	pm[pmdata_count++] = data;

	if(virq_count == PM_VIRQ_CNT)
		virq_count = 0;

	if(rtos_revoke_count == PM_RTOS_CNT)
		rtos_revoke_count = 0;

	if(svcentry_count == PM_SVC_CNT)
		svcentry_count = 0;

	if(pmdata_count >= (PMDATA_MAX)){
		print("\n\r Evaluation OVER! \n\r");
		SaveData(PMDATA_MAX);
	}
}

#if IS_KERNEL_FUNCTION_MEASURE
void timeprint_svcexit(mword low)
{
	mword data;

	mword * pm = (mword *)PMDATA_BASE;

	data = (svc_exit <<28 ) | (low & 0x0fffffff ) ;

	//XTime_SetTime(0);

	if(pmdata_count == PMDATA_MAX){
		print("\n\r Evaluation OVER! \n\r");
		SaveData(PMDATA_MAX);
	}

	pm[pmdata_count++] = data;

}
#endif

void SaveData(mword sizewords){
	char * datfile = "pmdata";
	FIL fil1;
	mword cnt;

	InitSD();
	SDOpen(datfile, &fil1);
	SDAccess_write(0, PMDATA_BASE, sizewords<<2 , (unsigned int *)&cnt, &fil1);
	SDClose(&fil1);

	xil_printf(" %d Data are saved. \n\r", cnt);

	while(1);
}

#endif
