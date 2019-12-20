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
/**   Synchronization Processing Test                                     */
/**                                                                       */
/**************************************************************************/
/**************************************************************************/
#include <guest_os_parameters.h>
#if IS_TM_SYNCHRON

#include "tm_api.h"


/* Define the counters used in the demo application...  */

unsigned long   tm_synchronization_processing_counter;


/* Define the test thread prototypes.  */

void            tm_synchronization_processing_thread_0_entry(void);


/* Define the reporting thread prototype.  */

void            tm_synchronization_processing_thread_report(void);


/* Define the initialization prototype.  */

void            tm_synchronization_processing_initialize(void);


/* Define main entry point.  */

void tm_main()
{
    tm_initialize(tm_synchronization_processing_initialize);
}


/* Define the synchronization processing test initialization.  */

void  tm_synchronization_processing_initialize(void)
{

    /* Create thread 0 at priority 10.  */
    tm_thread_create(0, 10, tm_synchronization_processing_thread_0_entry);

    /* Resume thread 0.  */
    tm_thread_resume(0);

    /* Create a semaphore for the test.  */
    tm_semaphore_create(0);

    /* Create the reporting thread. It will preempt the other 
       threads and print out the test results.  */
    tm_thread_create(5, 2, tm_synchronization_processing_thread_report);
    tm_thread_resume(5);
}


/* Define the synchronization processing thread.  */
void  tm_synchronization_processing_thread_0_entry(void)
{

int status;

    while(1)
    {

        /* Get the semaphore.  */
        tm_semaphore_get(0);

        /* Release the semaphore.  */
        status = tm_semaphore_put(0);

        /* Check for semaphore put error.  */
        if (status != TM_SUCCESS)
            break;

        /* Increment the number of semaphore get/puts.  */
        tm_synchronization_processing_counter++;
    }
}


/* Define the synchronization test reporting thread.  */
void  tm_synchronization_processing_thread_report(void)
{

unsigned long   last_counter;
unsigned long   relative_time;


    /* Initialize the last counter.  */
    last_counter =  0;

    /* Initialize the relative time.  */
    relative_time =  0;

    while(1)
    {

        /* Sleep to allow the test to run.  */
        tm_thread_sleep(TM_TEST_DURATION);

        /* Increment the relative time.  */
        relative_time =  relative_time + TM_TEST_DURATION;

        /* Print results to the stdio window.  */
        xil_printf("**** Thread-Metric Synchronization Processing Test ****\n\r Relative Time: %d\n\r", relative_time);

        /* See if there are any errors.  */
        if (tm_synchronization_processing_counter == last_counter)
        {

            print("ERROR: Invalid counter value(s). Error getting/putting semaphore!\n\r");
        }

        /* Show the time period total.  */
        xil_printf("Time Period Total:  %d\n\r", tm_synchronization_processing_counter - last_counter);

        /* Save the last counter.  */
        last_counter =  tm_synchronization_processing_counter;
    }
}

#endif
