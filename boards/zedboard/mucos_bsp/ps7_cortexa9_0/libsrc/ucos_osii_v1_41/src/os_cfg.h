/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*                                  uC/OS-II Configuration File for V2.9x
*
*                               (c) Copyright 2005-2013, Micrium, Weston, FL
*                                          All Rights Reserved
*
*
* File    : OS_CFG.H
* By      : Jean J. Labrosse
* Version : V2.92.11
*
* LICENSING TERMS:
* ---------------
*   uC/OS-II is provided in source form for FREE evaluation, for educational use or for peaceful research.
* If you plan on using  uC/OS-II  in a commercial product you need to contact Micrium to properly license
* its use in your product. We provide ALL the source code for your convenience and to help you experience
* uC/OS-II.   The fact that the  source is provided does  NOT  mean that you can use it without  paying a
* licensing fee.
*********************************************************************************************************
*/

#ifndef OS_CFG_H
#define OS_CFG_H


                                       /* ---------------------- MISCELLANEOUS ----------------------- */
#define OS_APP_HOOKS_EN           0
#define OS_ARG_CHK_EN             1
#define OS_CPU_HOOKS_EN           1

#define OS_DEBUG_EN               1

#define OS_EVENT_MULTI_EN         0
#define OS_EVENT_NAME_EN          1

#define OS_LOWEST_PRIO           63
                                       /* ... MUST NEVER be higher than 254!                           */

#define OS_MAX_EVENTS            64
#define OS_MAX_FLAGS              5
#define OS_MAX_MEM_PART           5
#define OS_MAX_QS                 5
#define OS_MAX_TASKS             32

#define OS_SCHED_LOCK_EN          1

#define OS_TICK_STEP_EN           1
#define OS_TICKS_PER_SEC        1000

#define OS_TLS_TBL_SIZE           0


                                       /* --------------------- TASK STACK SIZE ---------------------- */
#define OS_TASK_TMR_STK_SIZE    512
#define OS_TASK_STAT_STK_SIZE   512
#define OS_TASK_IDLE_STK_SIZE   256


                                       /* --------------------- TASK MANAGEMENT ---------------------- */
#define OS_TASK_CHANGE_PRIO_EN    1
#define OS_TASK_CREATE_EN         1
#define OS_TASK_CREATE_EXT_EN     1
#define OS_TASK_DEL_EN            1
#define OS_TASK_NAME_EN           1
#define OS_TASK_PROFILE_EN        1
#define OS_TASK_QUERY_EN          1
#define OS_TASK_REG_TBL_SIZE      2
#define OS_TASK_STAT_EN           1
#define OS_TASK_STAT_STK_CHK_EN   0
#define OS_TASK_SUSPEND_EN        1
#define OS_TASK_SW_HOOK_EN        1


                                       /* ----------------------- EVENT FLAGS ------------------------ */
#define OS_FLAG_EN                1
#define OS_FLAG_ACCEPT_EN         1
#define OS_FLAG_DEL_EN            1
#define OS_FLAG_NAME_EN           1
#define OS_FLAG_QUERY_EN          1
#define OS_FLAG_WAIT_CLR_EN       1
#define OS_FLAGS_NBITS           16


                                       /* -------------------- MESSAGE MAILBOXES --------------------- */
#define OS_MBOX_EN                1
#define OS_MBOX_ACCEPT_EN         1
#define OS_MBOX_DEL_EN            1
#define OS_MBOX_PEND_ABORT_EN     1
#define OS_MBOX_POST_EN           1
#define OS_MBOX_POST_OPT_EN       1
#define OS_MBOX_QUERY_EN          1


                                       /* --------------------- MEMORY MANAGEMENT -------------------- */
#define OS_MEM_EN                 1
#define OS_MEM_NAME_EN            1
#define OS_MEM_QUERY_EN           1


                                       /* ---------------- MUTUAL EXCLUSION SEMAPHORES --------------- */
#define OS_MUTEX_EN               1
#define OS_MUTEX_ACCEPT_EN        1
#define OS_MUTEX_DEL_EN           1
#define OS_MUTEX_QUERY_EN         1


                                       /* ---------------------- MESSAGE QUEUES ---------------------- */
#define OS_Q_EN                   1
#define OS_Q_ACCEPT_EN            1
#define OS_Q_DEL_EN               1
#define OS_Q_FLUSH_EN             1
#define OS_Q_PEND_ABORT_EN        1
#define OS_Q_POST_EN              1
#define OS_Q_POST_FRONT_EN        1
#define OS_Q_POST_OPT_EN          1
#define OS_Q_QUERY_EN             1


                                       /* ------------------------ SEMAPHORES ------------------------ */
#define OS_SEM_EN                 1
#define OS_SEM_ACCEPT_EN          1
#define OS_SEM_DEL_EN             1
#define OS_SEM_PEND_ABORT_EN      1
#define OS_SEM_QUERY_EN           1
#define OS_SEM_SET_EN             1


                                       /* --------------------- TIME MANAGEMENT ---------------------- */
#define OS_TIME_DLY_HMSM_EN       1
#define OS_TIME_DLY_RESUME_EN     1
#define OS_TIME_GET_SET_EN        1
#define OS_TIME_TICK_HOOK_EN      1


                                       /* --------------------- TIMER MANAGEMENT --------------------- */
#define OS_TMR_EN                 1
#define OS_TMR_CFG_MAX           16
#define OS_TMR_CFG_NAME_EN        1
#define OS_TMR_CFG_WHEEL_SIZE     2
#define OS_TMR_CFG_TICKS_PER_SEC 10

#endif
