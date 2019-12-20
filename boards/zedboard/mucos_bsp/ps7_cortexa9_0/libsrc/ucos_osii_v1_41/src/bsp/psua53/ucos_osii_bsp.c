/*
*********************************************************************************************************
*
*                                    MICRIUM BOARD SUPPORT PACKAGE
*
*                          (c) Copyright 2014; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*
*               This BSP is provided in source form to registered licensees ONLY.  It is
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
*                                    MICRIUM BOARD SUPPORT PACKAGE
*                                                SYSTICK
*
* Filename      : ucos_osii_bsp.c
* Version       : V1.01
* Programmer(s) : JBL
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/

#include  <lib_def.h>
#include  <cpu.h>

#include  <xparameters.h>

#include  "ucos_osii_bsp.h"
#include  <ucos_int.h>


/* TODO may have four cores. */
#if (XPAR_CPU_ID == 0)
#define SCUTMR_CLK_FREQ  (XPAR_PS8_CORTEXA53_0_CPU_CLK_FREQ_HZ / 2)
#else
#define SCUTMR_CLK_FREQ  (XPAR_PS8_CORTEXA53_2_CPU_CLK_FREQ_HZ / 2)
#endif


#define  ARM_PTMR_REG_PTLR     (*((CPU_REG32 *)(XPAR_PS8_SCUTIMER_0_S_AXI_BASEADDR + 0x0000))) /* Private timer load register.            */
#define  ARM_PTMR_REG_PTCTRR   (*((CPU_REG32 *)(XPAR_PS8_SCUTIMER_0_S_AXI_BASEADDR + 0x0004))) /* Private timer counter register.         */
#define  ARM_PTMR_REG_PTCTLR   (*((CPU_REG32 *)(XPAR_PS8_SCUTIMER_0_S_AXI_BASEADDR + 0x0008))) /* Private timer control register.         */
#define  ARM_PTMR_REG_PTISR    (*((CPU_REG32 *)(XPAR_PS8_SCUTIMER_0_S_AXI_BASEADDR + 0x000C))) /* Private timer interrupt status register.*/

/*
*********************************************************************************************************
*                                       BSP_OS_TmrTickHandler()
*
* Description : Interrupt handler for the tick timer
*
* Argument(s) : cpu_id     Source core id
*
* Return(s)   : none.
*
* Caller(s)   : Application.
*
* Note(s)     : none.
*********************************************************************************************************
*/

void  UCOS_TmrTickHandler(void *p_int_arg, CPU_INT32U cpu_id)
{

    PS8A53_OS_TmrTickHandler();

    //OSTimeTick();
}


/*
 *********************************************************************************************************
 *                                            BSP_OS_TmrTickInit()
 *
 * Description : Initialize uC/OS-III's tick source
 *
 * Argument(s) : ticks_per_sec              Number of ticks per second.
 *
 * Return(s)   : none.
 *
 * Caller(s)   : Application.
 *
 * Note(s)     : none.
 *********************************************************************************************************
 */

void UCOS_TmrTickInit (CPU_INT32U tick_rate)
{
    CPU_INT32U tmr_cnt;


    PS8A53_OS_TmrTickInit();

#if 0
    UCOS_IntVectSet (30u,
                     0u,
                     0u,
                     UCOS_TmrTickHandler,
                     DEF_NULL);

    UCOS_IntSrcEn (30u);
#endif

}
