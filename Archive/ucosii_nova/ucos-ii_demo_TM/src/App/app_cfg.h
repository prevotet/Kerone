/*
*********************************************************************************************************
*                                              EXAMPLE CODE
*
*                             (c) Copyright 2012; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*               Knowledge of the source code may NOT be used to develop a similar product.
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                       APPLICATION CONFIGURATION
*
*                           Xilinx XCZ0720 Cortex-A9 MPCore Evaluation Board
*
* Filename      : app_cfg.h
* Version       : V1.00
* Programmer(s) : JPB
*********************************************************************************************************
*/

#ifndef  __APP_CFG_H__
#define  __APP_CFG_H__


/*
*********************************************************************************************************
*                                       MODULE ENABLE / DISABLE
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            BSP CONFIGURATION
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                              TASKS NAMES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            TASK PRIORITIES
*********************************************************************************************************
*/

#define  APP_CFG_TASK_START_PRIO                           8u
#define  APP_CFG_TASK_1_PRIO                               3u
#define  APP_CFG_TASK_2_PRIO                               4u
#define  APP_CFG_TASK_3_PRIO                               2u

#define  OS_TASK_TMR_PRIO                        (OS_LOWEST_PRIO - 2)


/*
*********************************************************************************************************
*                                            TASK STACK SIZES
*                             Size of the task stacks (# of OS_STK entries)
*********************************************************************************************************
*/

#define  APP_CFG_TASK_START_STK_SIZE                     512u
#define  APP_CFG_TASK_1_STK_SIZE                         512u
#define  APP_CFG_TASK_2_STK_SIZE                         512u
#define  APP_CFG_TASK_3_STK_SIZE                         0x60000//APP_CFG_TASK_1_STK_SIZE * 64//


/*
*********************************************************************************************************
*                                        uC/LIB CONFIGURATION
*********************************************************************************************************
*/

#define  LIB_MEM_CFG_OPTIMIZE_ASM_EN      DEF_ENABLED
#define  LIB_MEM_CFG_ARG_CHK_EXT_EN       DEF_ENABLED
#define  LIB_MEM_CFG_ALLOC_EN             DEF_DISABLED
#define  LIB_MEM_CFG_POOL_NBR                  10
#define  LIB_MEM_CFG_HEAP_SIZE              28000L


/*
*********************************************************************************************************
*                                    BSP CONFIGURATION: RS-232
*********************************************************************************************************
*/

#define  BSP_SER_COMM_EN                  DEF_ENABLED
#define  BSP_CFG_SER_COMM_SEL             BSP_SER_COMM_UART_02
#define  BSP_CFG_TS_TMR_SEL                    2

/*
*********************************************************************************************************
*                                     TRACE / DEBUG CONFIGURATION
*********************************************************************************************************
*/

#define  TRACE_LEVEL_OFF                       0
#define  TRACE_LEVEL_INFO                      1
#define  TRACE_LEVEL_DEBUG                     2

#define  APP_TRACE_LEVEL                TRACE_LEVEL_INFO
#define  APP_TRACE                      BSP_Ser_Printf

#define  APP_TRACE_INFO(x)            ((APP_TRACE_LEVEL >= TRACE_LEVEL_INFO)  ? (void)(APP_TRACE x) : (void)0)
#define  APP_TRACE_DEBUG(x)           ((APP_TRACE_LEVEL >= TRACE_LEVEL_DEBUG) ? (void)(APP_TRACE x) : (void)0)



#endif
