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
/**   Interrupt Preemption Processing Test                                */
/**                                                                       */
/**************************************************************************/
/**************************************************************************/
#include <guest_os_parameters.h>
#if IS_TM_INT_PREEMPT

#include "tm_api.h"
#include <cpu.h>
#include <includes.h>


/* Define the counters used in the demo application...  */

unsigned long   tm_interrupt_preemption_thread_0_counter;
unsigned long   tm_interrupt_preemption_thread_1_counter;
unsigned long   tm_interrupt_preemption_handler_counter;


/* Define the test thread prototypes.  */

void            tm_interrupt_preemption_thread_0_entry(void);
void            tm_interrupt_preemption_thread_1_entry(void);
void            tm_interrupt_preemption_handler_entry(void);


/* Define the reporting thread prototype.  */

void            tm_interrupt_preemption_thread_report(void);


/* Define the interrupt handler.  This must be called from the RTOS.  */

void            tm_interrupt_preemption_handler(void);


/* Define the initialization prototype.  */

void            tm_interrupt_preemption_processing_initialize(void);


/* Define main entry point.  */

void tm_main()
{
	tm_initialize(tm_interrupt_preemption_processing_initialize);
    CSP_IntVectReg((CSP_DEV_NBR    )CSP_INT_CTRL_NBR_MAIN,
                       (CSP_DEV_NBR    )SGI_Number,
                       (CPU_FNCT_PTR   )tm_interrupt_preemption_handler,
                       (void          *)0);
}


/* Define the interrupt processing test initialization.  */

void  tm_interrupt_preemption_processing_initialize(void)
{

    /* Create interrupt thread at priority 3.  */
    tm_thread_create(0, 3, tm_interrupt_preemption_thread_0_entry);

    /* Create thread that generates the interrupt at priority 10.  */
    tm_thread_create(1, 10, tm_interrupt_preemption_thread_1_entry);

    /* Resume just thread 1.  */
    tm_thread_resume(1);

    /* Create the reporting thread. It will preempt the other 
       threads and print out the test results.  */
    tm_thread_create(5, 2, tm_interrupt_preemption_thread_report);
    tm_thread_resume(5);
}


/* Define the interrupt thread.  This thread is resumed from the 
   interrupt handler.  It runs and suspends.  */
void  tm_interrupt_preemption_thread_0_entry(void)
{

    //print("Thread 0 \n\r");
	while(1)
    {
		//print("0");
        /* Increment this thread's counter.  */
        tm_interrupt_preemption_thread_0_counter++;

        /* Suspend. This will allow the thread generating the 
           interrupt to run again.  */
        tm_thread_suspend(0);
    }
}

/* Define the thread that generates the interrupt.  */
void  tm_interrupt_preemption_thread_1_entry(void)
{

    //print("Thread 1 \n\r");
	while(1)
    {

        /* Force an interrupt. The underlying RTOS must see that the 
           the interrupt handler is called from the appropriate software
           interrupt or trap. */
		asm("isb");
		*(unsigned long *)0xF8F01F00 = (1<<16)|SGI_Number;
		asm("isb");
        //asm("trap");  /* This is PowerPC specific.  */
		//print("1");
		tm_interrupt_preemption_thread_1_counter++;
		//tm_SGI();


        /* We won't get back here until the interrupt processing is complete,
           including the execution of the higher priority thread made ready
           by the interrupt.  */

        /* Increment this thread's counter.  */

    }
}


/* Define the interrupt handler.  This must be called from the RTOS trap handler.
   To be fair, it must behave just like a processor interrupt, i.e. it must save
   the full context of the interrupted thread during the preemption processing. */
void  tm_interrupt_preemption_handler(void)
{
	//print("i");
    /* Increment the interrupt count.  */
    tm_interrupt_preemption_handler_counter++;

    /* Resume the higher priority thread from the ISR.  */
    tm_thread_resume(0);

}


/* Define the interrupt test reporting thread.  */
void  tm_interrupt_preemption_thread_report(void)
{

unsigned long   total;
unsigned long   relative_time;
unsigned long   last_total;
unsigned long   average;


    //print("Thread 5 \n\r");
	/* Initialize the last total.  */
    last_total =  0;

    /* Initialize the relative time.  */
    relative_time =  0;

    while(1)
    {

        /* Sleep to allow the test to run.  */
        tm_thread_sleep(TM_TEST_DURATION);

        /* Increment the relative time.  */
        relative_time =  relative_time + TM_TEST_DURATION;

        /* Print results to the stdio window.  */
        xil_printf("**** Thread-Metric Interrupt Preemption Processing Test ****\r\n Relative Time: %d\r\n", relative_time);

        /* Calculate the total of all the counters.  */
        total =  tm_interrupt_preemption_thread_0_counter + tm_interrupt_preemption_thread_1_counter + tm_interrupt_preemption_handler_counter;

        /* Calculate the average of all the counters.  */
        average =  total/3;

        /* See if there are any errors.  */
        if ((tm_interrupt_preemption_thread_0_counter < (average - 1)) || 
            (tm_interrupt_preemption_thread_0_counter > (average + 1)) ||
            (tm_interrupt_preemption_thread_1_counter < (average - 1)) || 
            (tm_interrupt_preemption_thread_1_counter > (average + 1)) ||
            (tm_interrupt_preemption_handler_counter < (average - 1)) || 
            (tm_interrupt_preemption_handler_counter > (average + 1)))
        {

            print("ERROR: Invalid counter value(s). Interrupt processing test has failed!\n\r");
        }

        /* Show the total interrupts for the time period.  */
        xil_printf("Time Period Total:  %d\n\r", tm_interrupt_preemption_handler_counter - last_total);//,
        		//tm_interrupt_preemption_thread_0_counter,
        		//tm_interrupt_preemption_thread_1_counter
        		//);

        /* Save the last total number of interrupts.  */
        last_total =  tm_interrupt_preemption_handler_counter;
    }
}

#endif
