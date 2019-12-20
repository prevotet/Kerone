/**************************************************************************/ 
/*                                                                        */ 
/*            Copyright (c) 1996-2007 by Express Logic Inc.               */ 
/*                                                                        */ 
/*  This Original Work may be modified, distributed, or otherwise used in */ 
/*  any manner with no obligations other than the following:              */ 
/*                                                                        */ 
/*    1. This legend must be retained in its entirety in any source code  */ 
/*       copies of this Work.                                             */ 
/*                                                                        */ 
/*    2. This software may not be used in the development of an operating */
/*	 system product.                                                  */ 
/*                                                                        */  
/*  This Original Work is hereby provided on an "AS IS" BASIS and WITHOUT */ 
/*  WARRANTY, either express or implied, including, without limitation,   */ 
/*  the warranties of NON-INFRINGEMENT, MERCHANTABILITY or FITNESS FOR A  */ 
/*  PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY OF this         */ 
/*  ORIGINAL WORK IS WITH the user.                                       */ 
/*                                                                        */ 
/*  Express Logic, Inc. reserves the right to modify this software        */ 
/*  without notice.                                                       */ 
/*                                                                        */ 
/*  Express Logic, Inc.                     info@expresslogic.com         */
/*  11423 West Bernardo Court               http://www.expresslogic.com   */
/*  San Diego, CA  92127                                                  */
/*                                                                        */
/**************************************************************************/

/**************************************************************************/
/**************************************************************************/
/**                                                                       */ 
/** Thread-Metric Component                                              */
/**                                                                       */
/**   Porting Layer (Must be completed with RTOS specifics)               */
/**                                                                       */
/**************************************************************************/
/**************************************************************************/
#include <guest_os_parameters.h>
#if IS_TM_BENCHMARCK

/* Include necessary files.  */

#include <includes.h>
#include <os_cpu.h>
#include "TM_API.h"

/* Thread    Stack  */
#define TMThread_STK_SIZE 512
typedef struct{
	OS_STK       Stk[TMThread_STK_SIZE];
}TMThreadStk;

int thread_list[128];

OS_EVENT * SEMList[10];

void *CommMsg[16];

OS_EVENT * QueueList[4];

static INT32U mem_pool[512];

OS_MEM * MemPartition[4];


void  print              (char *str);

#define ICDSGIR *(unsigned long *)0xF8F01F00
void tm_SGI(){
	ICDSGIR = (1<<16)|SGI_Number;
}

/* This function called from main performs basic RTOS initialization, 
   calls the test initialization function, and then starts the RTOS function.  */
void  tm_initialize(void (*test_initialization_function)(void))
{
	// Set OSTCBCur(Current TLB) to IDLE task so that OSTaskSuspend() can function correctly
	OSTCBCur = OSTCBPrioTbl[OS_TASK_IDLE_PRIO];
	test_initialization_function();
}


/* This function takes a thread ID and priority and attempts to create the
   file in the underlying RTOS.  Valid priorities range from 1 through 31, 
   where 1 is the highest priority and 31 is the lowest. If successful, 
   the function should return TM_SUCCESS. Otherwise, TM_ERROR should be returned.   */
int  tm_thread_create(int thread_id, int priority, void (*entry_function)(void))
{
	INT8U Result;
	int * stk;

	if( NULL == (stk = malloc(TMThread_STK_SIZE * sizeof(int)))){
		print("TM Stack Creation Error \n\r");
		return TM_ERROR;
	}

	thread_list[thread_id] = priority;

	Result= OSTaskCreateExt(entry_function,
	                	(void       *)0,
	                	(OS_STK     *)&stk[TMThread_STK_SIZE-1],
	                	(OS_PRIO     )priority,
	                	(OS_PRIO     )priority,
	                	(OS_STK     *)&stk[0],
	                	(CPU_STK_SIZE)TMThread_STK_SIZE,
	                	(void       *)0,
	                	(CPU_INT16U  )(OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR));

	if(Result != OS_ERR_NONE ){
		xil_printf("TM Thread Creation Error: %d \n\r", Result);
		return TM_ERROR;
	}

	OSTaskSuspend(priority);

	return TM_SUCCESS;
}


/* This function resumes the specified thread.  If successful, the function should
   return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_thread_resume(int thread_id)
{
	INT8U Result;

	Result = OSTaskResume(thread_list[thread_id]);

	if( (Result == OS_ERR_NONE) | (Result == OS_ERR_TASK_NOT_SUSPENDED) )
		return TM_SUCCESS;

	//xil_printf("TM Thread Resume Error %d \n\r", Result);
	//while(1){}//return TM_ERROR;
}


/* This function suspends the specified thread.  If successful, the function should
   return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_thread_suspend(int thread_id)
{
	INT8U Result;

	Result = OSTaskSuspend(thread_list[thread_id]);

	if( Result == OS_ERR_NONE )
			return TM_SUCCESS;

	xil_printf("TM Thread Suspend Error %d\n\r", Result);
	return TM_ERROR;
}


/* This function relinquishes to other ready threads at the same
   priority.  */
void tm_thread_relinquish(void)
{

}


/* This function suspends the specified thread for the specified number
   of seconds.  If successful, the function should return TM_SUCCESS. 
   Otherwise, TM_ERROR should be returned.  */
void tm_thread_sleep(int seconds)
{
	OSTimeDlyHMSM(0, 0, seconds, 0);
}


/* This function creates the specified queue.  If successful, the function should
   return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_queue_create(int queue_id)
{
	if(NULL == (QueueList[queue_id] = OSQCreate(&CommMsg[0], 16)) )
		return TM_ERROR;
	return TM_SUCCESS;
}


/* This function sends a 16-byte message to the specified queue.  If successful, 
   the function should return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_queue_send(int queue_id, unsigned long *message_ptr)
{
	int i;
	for(i = 0; i < 4; i ++){
		if(OSQPost(QueueList[queue_id], message_ptr[i]) != OS_ERR_NONE){
			print("TM Thread Send Queue Error \n\r");
			return TM_ERROR;
		}
	}
	return TM_SUCCESS;
}


/* This function receives a 16-byte message from the specified queue.  If successful, 
   the function should return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_queue_receive(int queue_id, unsigned long *message_ptr)
{
	INT8U err;

	int i;

	for(i = 0; i < 4; i ++){
		message_ptr[i] = OSQPend(QueueList[queue_id], 0, &err);
		if(err != OS_ERR_NONE){
			print("TM Thread Get Queue Error \n\r");
			return TM_ERROR;
		}
	}
	return TM_SUCCESS;

}


/* This function creates the specified semaphore.  If successful, the function should
   return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_semaphore_create(int semaphore_id)
{
	if(NULL == (SEMList[semaphore_id] = OSSemCreate(1)))
		return TM_ERROR;
	return TM_SUCCESS;
}


/* This function gets the specified semaphore.  If successful, the function should
   return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_semaphore_get(int semaphore_id)
{
	INT8U err;

	OSSemPend( SEMList[semaphore_id],0, &err);

	if(err == OS_ERR_NONE)
		return TM_SUCCESS;
	print("TM Thread SEM get Error \n\r");
	return TM_ERROR;
}


/* This function puts the specified semaphore.  If successful, the function should
   return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_semaphore_put(int semaphore_id)
{
	if(OSSemPost(SEMList[semaphore_id]) == OS_ERR_NONE)
		return TM_SUCCESS;
	print("TM Thread SEM put Error \n\r");
	return TM_ERROR;
}


/* This function creates the specified memory pool that can support one or more
   allocations of 128 bytes.  If successful, the function should
   return TM_SUCCESS. Otherwise, TM_ERROR should be returned.  */
int  tm_memory_pool_create(int pool_id)
{
	INT8U err;

	MemPartition[pool_id] = OSMemCreate(&mem_pool, 4, 128, &err);

	if(err == OS_ERR_NONE)
		return TM_SUCCESS;
	return TM_ERROR;
}


/* This function allocates a 128 byte block from the specified memory pool.  
   If successful, the function should return TM_SUCCESS. Otherwise, TM_ERROR 
   should be returned.  */
int  tm_memory_pool_allocate(int pool_id, unsigned char **memory_ptr)
{
	INT8U err;

	*memory_ptr = OSMemGet(MemPartition[pool_id], &err);

	if(err == OS_ERR_NONE)
		return TM_SUCCESS;
	return TM_ERROR;
}


/* This function releases a previously allocated 128 byte block from the specified 
   memory pool. If successful, the function should return TM_SUCCESS. Otherwise, TM_ERROR 
   should be returned.  */
int  tm_memory_pool_deallocate(int pool_id, unsigned char *memory_ptr)
{
	if(OSMemPut(MemPartition[pool_id], memory_ptr) == OS_ERR_NONE)
		return TM_SUCCESS;
	return TM_ERROR;
}


#endif
