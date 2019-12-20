/*
*********************************************************************************************************
*                                             uC/CSP
*                                        Chip Support Package
*
*                            (c) Copyright 2012; Micrium, Inc.; Weston, FL
*
*               All rights reserved. Protected by international copyright laws.
*
*               uC/CSP is provided in source form to registered licensees ONLY.  It is
*               illegal to distribute this source code to any third party unless you receive
*               written permission by an authorized Micrium representative.  Knowledge of
*               the source code may NOT be used to develop a similar product.
*
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*
*               You can contact us at www.micrium.com.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                       CSP CONFIGURATION FILE
*
*                                              TEMPLATE
*
* Filename      : csp_cfg.h
* Version       : V1.00
* Programmer(s) : FT
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               MODULE
*********************************************************************************************************
*/

#ifndef  CSP_CFG_MODULE_PRESENT
#define  CSP_CFG_MODULE_PRESENT


/*$PAGE*/
/*
*********************************************************************************************************
*                                         ARGUMENTS CHECKING
*
* Note(s) : (1) Configure 'CSP_CFG_ARG_CHK_EN' to enable/disable arguments checking.
*********************************************************************************************************
*/

#define  CSP_CFG_ARG_CHK_EN                      DEF_ENABLED


/*$PAGE*/
/*
*********************************************************************************************************
*                                  INTERRUPT MODULE CONFIGURATION
*
* Note(s) : (1) Configure CSP_CFG_INT_ISR_EXEC_MEAS_EN to include variables to measure CPU's interrupt
*               Interrupt Service Routine (ISR) execution time.
*
*               (a) ISR execution time is only accurate only when interrupt nesting
*                   'CSP_CFG_INT_NESTING_EN' is disabled.
*
*           (2) Configure CSP_INT_ISR_ARG_EN to enable/disable argument passing to ISR handlers.
*
*           (3) Configure CSP_CFG_INT_NESTING_EN to enable/disable interrupt nesting.
*********************************************************************************************************
*/
#define  CSP_CFG_INT_ISR_EXEC_MEAS_EN            DEF_DISABLED
//#define  CSP_CFG_INT_ISR_EXEC_MEAS_EN            DEF_ENABLED
#define  CSP_CFG_INT_ISR_ARG_EN                  DEF_ENABLED
#define  CSP_CFG_INT_NESTING_EN                  DEF_DISABLED


/*$PAGE*/
/*
*********************************************************************************************************
*                               CHIP SUPPORT PACKAGE OSCILLATOR CONFIGURATION
*
* Note(s) : (1) Configure CSP_CFG_PM_MAIN_XTAL_FREQ_HZ  with the frequency in Hertz of the main oscillator.
*********************************************************************************************************
*/

#define  CSP_CFG_PM_MAIN_XTAL_FREQ_HZ             100000000u
#define  CSP_CFG_PM_SLOW_XTAL_FREQ_HZ             100000000u

/*$PAGE*/
/*
*********************************************************************************************************
*                                             MODULE END
*********************************************************************************************************
*/

#endif                                                          /* End of CPU cfg module include.                       */

