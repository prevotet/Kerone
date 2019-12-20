/*
*********************************************************************************************************
*                                     MICRIUM BOARD SUPPORT SUPPORT
*
*                          (c) Copyright 2003-2011; Micrium, Inc.; Weston, FL
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
*                                      BOARD SUPPORT PACKAGE (BSP)
*
*                        Xilinx Zynq-7000 ZC702 Cortex-A9 MPCore DEVELOPMENT KIT
*
* Filename      : bsp.h
* Version       : V1.00
* Programmer(s) : JPB
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                                 MODULE
*
* Note(s) : (1) This header file is protected from multiple pre-processor inclusion through use of the
*               BSP present pre-processor macro definition.
*********************************************************************************************************
*/

#ifndef  BSP_PRESENT
#define  BSP_PRESENT


/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/

#include  <csp.h>
#include  <lib_def.h>
#include  <bsp_os.h>


/*
*********************************************************************************************************
*                                                 EXTERNS
*********************************************************************************************************
*/


#ifdef   BSP_MODULE
#define  BSP_EXT
#else
#define  BSP_EXT  extern
#endif


/*
*********************************************************************************************************
*                                        DEFAULT CONFIGURATION
*********************************************************************************************************
*/

#define  BSP_GPIO_BITMASK_LEDS_ALL            0x0000000f
#define  BSP_GPIO_BITMASK_LEDS_DS15           0x00000008        /* Bitmask for the LED labeled as DS15 (P17)            */
#define  BSP_GPIO_BITMASK_LEDS_DS16           0x00000004        /* Bitmask for the LED labeled as DS16 (P18)            */
#define  BSP_GPIO_BITMASK_LEDS_DS17           0x00000002        /* Bitmask for the LED labeled as DS17 (W10)            */
#define  BSP_GPIO_BITMASK_LEDS_DS18           0x00000001        /* Bitmask for the LED labeled as DS18 (V7)             */

#define  BSP_GPIO_BITMASK_SWS_ALL             0x00000003
#define  BSP_GPIO_BITMASK_SWS_SW5             0x00000001        /* Bitmask for the Switch labeled as SW5 on the board   */
#define  BSP_GPIO_BITMASK_SWS_SW7             0x00000002        /* Bitmask for the Switch labeled as SW7 on the board   */


/*
*********************************************************************************************************
*                                          GLOBAL VARIABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

void         BSP_Init               (void);
void         BSP_PreInit            (void);
void         BSP_PostInit           (void);
void         BSP_LowLevelInit       (void);

BSP_EXT  void         BSP_LED_On       (CPU_INT08U led);
BSP_EXT  void         BSP_LED_Off      (CPU_INT08U led);
BSP_EXT  void         BSP_LED_Toggle   (CPU_INT08U led);

BSP_EXT  CPU_BOOLEAN  BSP_SwitchesRd   (CPU_INT08U  id);

/*
*********************************************************************************************************
*                                          CONFIGURATION ERRORS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                              MODULE END
*********************************************************************************************************
*/

#endif

