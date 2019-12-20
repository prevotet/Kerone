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
/**   Preemptive Scheduling Test                                          */
/**                                                                       */
/**************************************************************************/
/**************************************************************************/
#include <guest_os_parameters.h>
#if IS_TM_CTX_SWITCH

#include "tm_api.h"


/* Define the counters used in the demo application...  */

unsigned long   tm_preemptive_thread_0_counter;
unsigned long   tm_preemptive_thread_1_counter;
unsigned long   tm_preemptive_thread_2_counter;
unsigned long   tm_preemptive_thread_3_counter;
unsigned long   tm_preemptive_thread_4_counter;


/* Define the test thread prototypes.  */

void            tm_preemptive_thread_0_entry(void);
void            tm_preemptive_thread_1_entry(void);
void            tm_preemptive_thread_2_entry(void);
void            tm_preemptive_thread_3_entry(void);
void            tm_preemptive_thread_4_entry(void);


/* Define the reporting thread prototype.  */

void            tm_preemptive_thread_report(void);


/* Define the initialization prototype.  */

void            tm_preemptive_scheduling_initialize(void);


/* Define main entry point.  */

void tm_main()
{
    tm_initialize(tm_preemptive_scheduling_initialize);
}


/* Define the preemptive scheduling test initialization.  */

void  tm_preemptive_scheduling_initialize(void)
{

    /* Create thread 0 at priority 10.  */
    tm_thread_create(0, 10, tm_preemptive_thread_0_entry);

    /* Create thread 1 at priority 9.  */
    tm_thread_create(1, 9, tm_preemptive_thread_1_entry);

    /* Create thread 2 at priority 8.  */
    tm_thread_create(2, 8, tm_preemptive_thread_2_entry);

    /* Create thread 3 at priority 7.  */
    tm_thread_create(3, 7, tm_preemptive_thread_3_entry);

    /* Create thread 4 at priority 6.  */
    tm_thread_create(4, 6, tm_preemptive_thread_4_entry);

    /* Resume just thread 0.  */
    tm_thread_resume(0);

    /* Create the reporting thread. It will preempt the other 
       threads and print out the test results.  */
    tm_thread_create(5, 2, tm_preemptive_thread_report);
    tm_thread_resume(5);
}


/* Define the first preemptive thread.  */
void  tm_preemptive_thread_0_entry(void)
{
	//print("Thread 0 \n\r");
    while(1)
    {

        /* Resume thread 1.  */
        tm_thread_resume(1);

        /* We won't get back here until threads 1, 2, 3, and 4 all execute and
           self-suspend.  */

        /* Increment this thread's counter.  */
        tm_preemptive_thread_0_counter++;
    }
}

/* Define the second preemptive thread.  */
void  tm_preemptive_thread_1_entry(void)
{

	//print("Thread 1 \n\r");
	while(1)
    {

        /* Resume thread 2.  */
        tm_thread_resume(2);

        /* We won't get back here until threads 2, 3, and 4 all execute and
           self-suspend.  */

        /* Increment this thread's counter.  */
        tm_preemptive_thread_1_counter++;

        /* Suspend self!  */
        tm_thread_suspend(1);
    }
}

/* Define the third preemptive thread.  */
void  tm_preemptive_thread_2_entry(void)
{

	//print("Thread 2 \n\r");
	while(1)
    {

        /* Resume thread 3.  */
        tm_thread_resume(3);

        /* We won't get back here until threads 3 and 4 execute and
           self-suspend.  */

        /* Increment this thread's counter.  */
        tm_preemptive_thread_2_counter++;

        /* Suspend self!  */
        tm_thread_suspend(2);
    }
}


/* Define the fourth preemptive thread.  */
void  tm_preemptive_thread_3_entry(void)
{

	//print("Thread 3 \n\r");
	while(1)
    {

        /* Resume thread 4.  */
        tm_thread_resume(4);

        /* We won't get back here until thread 4 executes and
           self-suspends.  */

        /* Increment this thread's counter.  */
        tm_preemptive_thread_3_counter++;

        /* Suspend self!  */
        tm_thread_suspend(3);
    }
}


/* Define the fifth preemptive thread.  */
void  tm_preemptive_thread_4_entry(void)
{

	//print("Thread 4 \n\r");
	while(1)
    {

        /* Increment this thread's counter.  */
        tm_preemptive_thread_4_counter++;

        /* Self suspend thread 4.  */
        tm_thread_suspend(4);
    }
}


extern int cnt, tick_cnt;

/* Define the preemptive test reporting thread.  */
void  tm_preemptive_thread_report(void)
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
        xil_printf("**** Thread-Metric Preemptive Scheduling Test ****\n\r Relative Time: %d\n\r", relative_time);

        /* Calculate the total of all the counters.  */
        total =  tm_preemptive_thread_0_counter + tm_preemptive_thread_1_counter + tm_preemptive_thread_2_counter
                    + tm_preemptive_thread_3_counter + tm_preemptive_thread_4_counter;

        /* Calculate the average of all the counters.  */
        average =  total/5;

        /* See if there are any errors.  */
        if ((tm_preemptive_thread_0_counter < (average - 1)) || 
            (tm_preemptive_thread_0_counter > (average + 1)) ||
            (tm_preemptive_thread_1_counter < (average - 1)) || 
            (tm_preemptive_thread_1_counter > (average + 1)) ||
            (tm_preemptive_thread_2_counter < (average - 1)) || 
            (tm_preemptive_thread_2_counter > (average + 1)) ||
            (tm_preemptive_thread_3_counter < (average - 1)) || 
            (tm_preemptive_thread_3_counter > (average + 1)) ||
            (tm_preemptive_thread_4_counter < (average - 1)) || 
            (tm_preemptive_thread_4_counter > (average + 1)))
        {

            print("ERROR: Invalid counter value(s). Preemptive counters should not be more that 1 different than the average!\n\r");
        }

        /* Show the time period total.  */
        xil_printf("Time Period Total:  %d\n\r", total - last_total);

        //xil_printf("Masked: %d Total tick; %d\n\r", cnt, tick_cnt); while(1){};

        /* Save the last total.  */
        last_total =  total;
    }
}

#endif
