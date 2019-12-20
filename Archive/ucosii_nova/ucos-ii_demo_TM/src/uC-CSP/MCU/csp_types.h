/*
*********************************************************************************************************
*                                              uC/CSP
*                                        Chip Support Package
*
*                            (c) Copyright 2010; Micrium, Inc.; Weston, FL
*                         (c) Copyright 2003-2010; Micrium, Inc.; Weston, FL
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
*                                         uC/CSP DATA TYPES
*
* Filename      : csp_types.h
* Version       : V1.00
* Programmer(s) : FT
*********************************************************************************************************
* Note(s)       : 
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               MODULE
*********************************************************************************************************
*/

#ifndef  CSP_TYPES_MODULE_PRESENT
#define  CSP_TYPES_MODULE_PRESENT


/*
*********************************************************************************************************
*                                           INCLUDE FILES
*********************************************************************************************************
*/

#include  <cpu.h>
#include  <lib_def.h>


/*
*********************************************************************************************************
*                                               EXTERNS
*********************************************************************************************************
*/

#ifdef   CSP_TYPES_MODULE
#define  CSP_TYPES_EXT
#else
#define  CSP_TYPES_EXT  extern
#endif


/*
*********************************************************************************************************
*                                        DEVICE NUMBER IDENTIFIERS
*
* Note(s) : (1) The 'CSP_DEV_NBR' data type is used to reference port numbers, clk identifiers and peripherals 
*               IDs.
*********************************************************************************************************
*/

typedef  CPU_INT16U  CSP_DEV_NBR;                               /* Device number.                                       */


/*
*********************************************************************************************************
*                                        OPTIONS  AND OPTIONS FLAGS
*********************************************************************************************************
*/

typedef  CPU_INT16U  CSP_OPT_FLAGS;                             /* Option flags.                                        */
typedef  CPU_INT16U  CSP_OPT;                                   /* Options.                                             */


/*
*********************************************************************************************************
*                                           INTERRUPT VECTOR
*********************************************************************************************************
*/

typedef  struct  csp_int_vect {    
    CPU_FNCT_PTR   FnctPtr;                                     /* ISR Function Pointer                                 */
#if (CSP_CFG_INT_ISR_ARG_EN == DEF_ENABLED)    
    void          *ArgPtr;                                      /* ISR function Argument pointer.                       */
#endif    
#if (CSP_CFG_INT_ISR_EXEC_MEAS_EN == DEF_ENABLED) && \
    (CPU_CFG_TS_EN                == DEF_ENABLED)
    CPU_TS32       TimeMax;                                     /* ISR maximum execution time.                          */
    CPU_TS32       TimeCur;                                     /* ISR current execution time.                          */
#endif    
} CSP_INT_VECT;


/*
*********************************************************************************************************
*                                          GLOBAL VARIABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                              MACRO'S
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             MODULE END
*********************************************************************************************************
*/

#endif                                                          /* End of CSP_TYPES module include.                     */
