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
*                                      uC/CSP COMMON DRIVER API
*
* Filename      : csp.h
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

#ifndef  CSP_MODULE_PRESENT
#define  CSP_MODULE_PRESENT


/*$PAGE*/
/*
*********************************************************************************************************
*                                CHIP SUPPORT PACKAGE MODULE VERSION NUMBER
*
* Note(s) : (1) (a) The chip support package module software version is denoted as follows :
*
*                       Vx.yy
*
*                           where
*                                   V               denotes 'Version' label
*                                   x               denotes major software version revision number
*                                   yy              denotes minor software version revision number
*
*               (b) The software version label #define is formatted as follows :
*
*                       ver = x.yy * 100
*
*                           where
*                                   ver             denotes software version number scaled as an integer value
*                                   x.yy            denotes software version number
*********************************************************************************************************
*/

#define  CSP_VERSION                                     100u   /* See Note #1.                                         */



/*$PAGE*/
/*
*********************************************************************************************************
*                                        CHIP SUPPORT PACKAGE INCLUDE FILES
*
* Note(s) : (1) The chip support package files are located in the following directories :
*
*               (a) \<Your Product Application>\csp_cfg.h
*
*               (b) \<Chip Support Package>\MCU\csp.c
*                                              \csp.h
*
*               (c) \<Chip Support Package>\MCU\<manufacturer>\<family>\csp_grp_def.h
*                                                                      \csp_*.c
*
*               (d) \<Chip Support Package>\MCU\<manufacturer>\<family>\<dev>\csp_dev_def.h
*
*               (e) \<Chip Support Package>\OS\<os>\csp_os.c
*                                                  \csp_os.h
*
*                       where
*                               <Your Product Application>      directory path for Your Product's Application.
*                               <Chip Support Package>          directory path for chip support package.
*                               <manufacturer>                  directory name for microcontroller manufacturer.
*                               <family>                        directory name for microcontroller family.
*                               <dev>                           directory name for specific microcontroller on the same family.
*                               <os>                            directory name for specific operating system  (OS)
*
*           (2) CPU-configuration software files are located in the following directories :
*
*               (a) \<CPU-Compiler Directory>\cpu_def.h
*
*               (b) \<CPU-Compiler Directory>\<cpu>\<compiler>\cpu*.*
*
*                       where
*                               <CPU-Compiler Directory>        directory path for common   CPU-compiler software
*                               <cpu>                           directory name for specific processor (CPU)
*                               <compiler>                      directory name for specific compiler
*
*           (3) NO compiler-supplied standard library functions are used by the chip support package
*
*               (a) Standard library functions are implemented in the custom library module(s) :
*
*                       \<Custom Library Directory>\lib*.*
*
*                           where
*                                   <Custom Library Directory>      directory path for custom library software
*
*           (4) Compiler MUST be configured to include as additional include path directories :
*
*               (a) '\<Your Product Application>\'  directory                                    See Note #1a
*
*               (b) '\<Chip Support Package>\MCU\'  directory                                    See Note #1b
*
*               (c) '\<Custom Library Directory>\'  directory                                    See Note #3a
*
*               (d) Specific port directories :
*
*                   (1) (A) '\<CPU-Compiler Directory>\'                            directory    See Note #2
*                       (B) '\<CPU-Compiler Directory>\<cpu>\<compiler>'            directory
*
*                   (2) '\<Chip Support Package>\MCU\<manufacturer>\<family>\'      directory    See Note #1c
*
*                   (3) '\<Chip Support Package>\MCU\<manufacturer>\<family>\<dev>' directory    See Note #1d
*
*                   (3) '\<Chip Support Package>\OS\<os>\'                          directory    See Note #1e
*
*                       where
*                               <Your Product Application>      directory path for Your Product's Application
*                               <Chip Support Package>          directory path for chip support package
*                               <Custom Library Directory>      directory path for custom  library software
*                               <CPU-Compiler Directory>        directory path for common  CPU-compiler software
*                               <manufacturer>                  directory name for microcontroller manufacturer.
*                               <family>                        directory name for microcontroller family.
*                               <dev>                           directory name for specific microcontroller on the same family.
*                               <os>                            directory name for specific operating system  (OS)
*
*           (5) An application MUST pre-processor include ONLY this chip support package header file,
*               'csp.h'.  All other chip support package files are included via this main header file.
*
*               See also 'MODULE  Note #1'.
*********************************************************************************************************
*/


#include  <cpu.h>
#include  <cpu_core.h>

#include  <lib_def.h>

#include  <csp_cfg.h>
#include  <csp_types.h>

#include  <csp_grp.h>
#include  <csp_dev.h>


/*
*********************************************************************************************************
*                                               EXTERNS
*********************************************************************************************************
*/

#ifdef   CSP_MODULE
#define  CSP_EXT
#else
#define  CSP_EXT  extern
#endif


/*
*********************************************************************************************************
*                                        DEFAULT CONFIGURATION
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                            CLOCK DEFINES
*********************************************************************************************************
*/

#define  CSP_CLK_POL_LOW                        (CPU_BOOLEAN)(0u)
#define  CSP_CLK_POL_HIGH                       (CPU_BOOLEAN)(1u)


/*
*********************************************************************************************************
*                                            GPIO GENERIC DEFINES
*
* Note(s) : (1) 'CSP_GPIO_DIR_xxx' defines the direction of the pin when the pin is controlled by the GPIO controller..
* 
*           (2) Driver mode flags defines the pin configuration:
*                
*                   CSP_GPIO_FLAG_MODE_NONE         Pin has a has neither pull-up nor pull-down resister.
*                   CSP_GPIO_FLAG_MODE_PULLUP       Pin has a pull-up   resistor enabled.
*                   CSP_GPIO_FLAG_MODE_PULLDOWN     Pin has a pull-down resistor enabled.
*                   CSP_GPIO_FLAG_MODE_REPEATER     Pin has repeater mode enabled
*                   CSP_GPIO_FLAG_MODE_OPEN_DRAIN   Pin is in normal open drain mode.
*                   CSP_GPIO_FLAG_MODE_SCH_TRIGGER  pin has schmitt trigger enabled.
* 
*           (3) The Option flags allows to perform optional operation in the GPIO configuration.
*                   CSP_GPIO_OPT_RD_WR_EN   Controlled pin is affected by writes to the port's.
*                   CSP_GPIO_OPT_RD_WR_DIS  Controlled pin is not affected by writes to the port.
* 
*           (3) I/O pins are shared with other peripherals or functions. 'CSP_GPIO_FNCT_xx' controls the IO function 
*               for a specific pin.
*********************************************************************************************************
*/
                                                                /* -------------- GPIO PINS DIRECTION --------------- */
#define  CSP_GPIO_DIR_IN                                0u      /* Input                                              */
#define  CSP_GPIO_DIR_OUT                               1u      /* Output                                             */ 
#define  CSP_GPIO_DIR_INOUT                             2u      /* Bi-Directional bit                                 */

                                                                /* ------------ GPIO DRIVE MODE DEFINES ------------- */
#define  CSP_GPIO_FLAG_MODE_NONE                (CSP_OPT_FLAGS)(DEF_BIT_00)
#define  CSP_GPIO_FLAG_MODE_PULLUP              (CSP_OPT_FLAGS)(DEF_BIT_01)
#define  CSP_GPIO_FLAG_MODE_PULLDOWN            (CSP_OPT_FLAGS)(DEF_BIT_02)
#define  CSP_GPIO_FLAG_MODE_REPEATER            (CSP_OPT_FLAGS)(DEF_BIT_03)
#define  CSP_GPIO_FLAG_MODE_OPEN_DRAIN          (CSP_OPT_FLAGS)(DEF_BIT_04)
#define  CSP_GPIO_FLAG_MODE_SCH_TRIGGER         (CSP_OPT_FLAGS)(DEF_BIT_05)

                                                                /* ----------------- GPIO FUNCTIONS  ----------------- */
#define  CSP_GPIO_FNCT_00                               0u
#define  CSP_GPIO_FNCT_01                               1u
#define  CSP_GPIO_FNCT_02                               2u
#define  CSP_GPIO_FNCT_03                               3u
#define  CSP_GPIO_FNCT_04                               4u
#define  CSP_GPIO_FNCT_05                               5u
#define  CSP_GPIO_FNCT_06                               6u
#define  CSP_GPIO_FNCT_07                               7u
#define  CSP_GPIO_FNCT_08                               8u
#define  CSP_GPIO_FNCT_09                               9u
#define  CSP_GPIO_FNCT_10                              10u
#define  CSP_GPIO_FNCT_11                              11u
#define  CSP_GPIO_FNCT_12                              12u
#define  CSP_GPIO_FNCT_13                              13u
#define  CSP_GPIO_FNCT_14                              14u
#define  CSP_GPIO_FNCT_15                              15u

                                                                /* ------------- GPIO PORT NUMBER DEFINES ------------- */
#define  CSP_GPIO_PORT_NBR_00                   (CSP_DEV_NBR)( 0u)
#define  CSP_GPIO_PORT_NBR_01                   (CSP_DEV_NBR)( 1u)
#define  CSP_GPIO_PORT_NBR_02                   (CSP_DEV_NBR)( 2u)
#define  CSP_GPIO_PORT_NBR_03                   (CSP_DEV_NBR)( 3u)
#define  CSP_GPIO_PORT_NBR_04                   (CSP_DEV_NBR)( 4u)
#define  CSP_GPIO_PORT_NBR_05                   (CSP_DEV_NBR)( 5u)
#define  CSP_GPIO_PORT_NBR_06                   (CSP_DEV_NBR)( 6u)
#define  CSP_GPIO_PORT_NBR_07                   (CSP_DEV_NBR)( 7u)
#define  CSP_GPIO_PORT_NBR_08                   (CSP_DEV_NBR)( 8u)
#define  CSP_GPIO_PORT_NBR_09                   (CSP_DEV_NBR)( 9u)
#define  CSP_GPIO_PORT_NBR_10                   (CSP_DEV_NBR)(10u)
#define  CSP_GPIO_PORT_NBR_11                   (CSP_DEV_NBR)(11u)
#define  CSP_GPIO_PORT_NBR_12                   (CSP_DEV_NBR)(12u)
#define  CSP_GPIO_PORT_NBR_13                   (CSP_DEV_NBR)(13u)
#define  CSP_GPIO_PORT_NBR_14                   (CSP_DEV_NBR)(14u)
#define  CSP_GPIO_PORT_NBR_15                   (CSP_DEV_NBR)(15u)

#define  CSP_GPIO_PORT_NBR_A                    (CSP_DEV_NBR)( 0u)
#define  CSP_GPIO_PORT_NBR_B                    (CSP_DEV_NBR)( 1u)
#define  CSP_GPIO_PORT_NBR_C                    (CSP_DEV_NBR)( 2u)
#define  CSP_GPIO_PORT_NBR_D                    (CSP_DEV_NBR)( 3u)
#define  CSP_GPIO_PORT_NBR_E                    (CSP_DEV_NBR)( 4u)
#define  CSP_GPIO_PORT_NBR_F                    (CSP_DEV_NBR)( 5u)
#define  CSP_GPIO_PORT_NBR_G                    (CSP_DEV_NBR)( 6u)
#define  CSP_GPIO_PORT_NBR_H                    (CSP_DEV_NBR)( 7u)
#define  CSP_GPIO_PORT_NBR_I                    (CSP_DEV_NBR)( 8u)
#define  CSP_GPIO_PORT_NBR_J                    (CSP_DEV_NBR)( 9u)
#define  CSP_GPIO_PORT_NBR_K                    (CSP_DEV_NBR)(10u)
#define  CSP_GPIO_PORT_NBR_L                    (CSP_DEV_NBR)(11u)
#define  CSP_GPIO_PORT_NBR_M                    (CSP_DEV_NBR)(12u)
#define  CSP_GPIO_PORT_NBR_N                    (CSP_DEV_NBR)(13u)
#define  CSP_GPIO_PORT_NBR_P                    (CSP_DEV_NBR)(14u)
#define  CSP_GPIO_PORT_NBR_O                    (CSP_DEV_NBR)(15u)

#define  CSP_GPIO_PIN_00                        DEF_BIT_00
#define  CSP_GPIO_PIN_01                        DEF_BIT_01
#define  CSP_GPIO_PIN_02                        DEF_BIT_02
#define  CSP_GPIO_PIN_03                        DEF_BIT_03
#define  CSP_GPIO_PIN_04                        DEF_BIT_04
#define  CSP_GPIO_PIN_05                        DEF_BIT_05
#define  CSP_GPIO_PIN_06                        DEF_BIT_06
#define  CSP_GPIO_PIN_07                        DEF_BIT_07
#define  CSP_GPIO_PIN_08                        DEF_BIT_08
#define  CSP_GPIO_PIN_09                        DEF_BIT_09
#define  CSP_GPIO_PIN_10                        DEF_BIT_10
#define  CSP_GPIO_PIN_11                        DEF_BIT_11
#define  CSP_GPIO_PIN_12                        DEF_BIT_12
#define  CSP_GPIO_PIN_13                        DEF_BIT_13
#define  CSP_GPIO_PIN_14                        DEF_BIT_14
#define  CSP_GPIO_PIN_15                        DEF_BIT_15
#define  CSP_GPIO_PIN_16                        DEF_BIT_16
#define  CSP_GPIO_PIN_17                        DEF_BIT_17
#define  CSP_GPIO_PIN_18                        DEF_BIT_18
#define  CSP_GPIO_PIN_19                        DEF_BIT_19
#define  CSP_GPIO_PIN_20                        DEF_BIT_20
#define  CSP_GPIO_PIN_21                        DEF_BIT_21
#define  CSP_GPIO_PIN_22                        DEF_BIT_22
#define  CSP_GPIO_PIN_23                        DEF_BIT_23
#define  CSP_GPIO_PIN_24                        DEF_BIT_24
#define  CSP_GPIO_PIN_25                        DEF_BIT_25
#define  CSP_GPIO_PIN_26                        DEF_BIT_26
#define  CSP_GPIO_PIN_27                        DEF_BIT_27
#define  CSP_GPIO_PIN_28                        DEF_BIT_28
#define  CSP_GPIO_PIN_29                        DEF_BIT_29
#define  CSP_GPIO_PIN_30                        DEF_BIT_30
#define  CSP_GPIO_PIN_31                        DEF_BIT_31


/*
*********************************************************************************************************
*                                             I2C DEFINES
*
*  Note(s) : (1) The I2C specification defines the following speeds mode.
*
*                (a)  Standard   mode.  Transfer rate up to     100Kbit/s
*                (b)  Fast       mode.  Trasnfer rate up to     400Kbits/s
*                (c)  High Speed mode.  Transfer rate up to 3.4  Mbits/s
*
*            (2) The I2C specification defines the following addressing modes:
*   
*                (a)  7-bit addressing mode.
*                (b) 10-bit addressing mode.
*********************************************************************************************************
*/

#define  CSP_I2C_NBR_00                         (CSP_DEV_NBR)( 0u)
#define  CSP_I2C_NBR_01                         (CSP_DEV_NBR)( 1u)
#define  CSP_I2C_NBR_02                         (CSP_DEV_NBR)( 2u)
#define  CSP_I2C_NBR_03                         (CSP_DEV_NBR)( 3u)
#define  CSP_I2C_NBR_04                         (CSP_DEV_NBR)( 4u)
#define  CSP_I2C_NBR_05                         (CSP_DEV_NBR)( 5u)
#define  CSP_I2C_NBR_06                         (CSP_DEV_NBR)( 6u)
#define  CSP_I2C_NBR_07                         (CSP_DEV_NBR)( 7u)
#define  CSP_I2C_NBR_08                         (CSP_DEV_NBR)( 8u)
#define  CSP_I2C_NBR_09                         (CSP_DEV_NBR)( 9u)
#define  CSP_I2C_NBR_10                         (CSP_DEV_NBR)(10u)
#define  CSP_I2C_NBR_11                         (CSP_DEV_NBR)(11u)
#define  CSP_I2C_NBR_12                         (CSP_DEV_NBR)(12u)
#define  CSP_I2C_NBR_13                         (CSP_DEV_NBR)(13u)
#define  CSP_I2C_NBR_14                         (CSP_DEV_NBR)(14u)
#define  CSP_I2C_NBR_15                         (CSP_DEV_NBR)(15u)

#define  CSP_I2C_ADDR_MODE_07                   (CSP_OPT    )(0u)
#define  CSP_I2C_ADDR_MODE_10                   (CSP_OPT    )(1u)

#define  CSP_I2C_MODE_STANDARD                  (CSP_OPT    )(0u)
#define  CSP_I2C_MODE_FAST                      (CSP_OPT    )(0u)
#define  CSP_I2C_MODE_HIGH                      (CSP_OPT    )(0u)

#define  CSP_I2C_MODE_FREQ_STANDARD             (CPU_INT32U)( 100000u)
#define  CSP_I2C_MODE_FREQ_FAST                 (CPU_INT32U)( 400000u)
#define  CSP_I2C_MODE_FREQ_HIGH                 (CPU_INT32U)(3400000u)


/*
*********************************************************************************************************
*                                             TIMER DEFINES
*********************************************************************************************************
*/

#define  CSP_TMR_NBR_00                         (CSP_DEV_NBR)( 0u)
#define  CSP_TMR_NBR_01                         (CSP_DEV_NBR)( 1u)
#define  CSP_TMR_NBR_02                         (CSP_DEV_NBR)( 2u)
#define  CSP_TMR_NBR_03                         (CSP_DEV_NBR)( 3u)
#define  CSP_TMR_NBR_04                         (CSP_DEV_NBR)( 4u)
#define  CSP_TMR_NBR_05                         (CSP_DEV_NBR)( 5u)
#define  CSP_TMR_NBR_06                         (CSP_DEV_NBR)( 6u)
#define  CSP_TMR_NBR_07                         (CSP_DEV_NBR)( 7u)
#define  CSP_TMR_NBR_08                         (CSP_DEV_NBR)( 8u)
#define  CSP_TMR_NBR_09                         (CSP_DEV_NBR)( 9u)
#define  CSP_TMR_NBR_10                         (CSP_DEV_NBR)(10u)
#define  CSP_TMR_NBR_11                         (CSP_DEV_NBR)(11u)
#define  CSP_TMR_NBR_12                         (CSP_DEV_NBR)(12u)
#define  CSP_TMR_NBR_13                         (CSP_DEV_NBR)(13u)
#define  CSP_TMR_NBR_14                         (CSP_DEV_NBR)(14u)
#define  CSP_TMR_NBR_15                         (CSP_DEV_NBR)(15u)

#define  CSP_TMR_NBR_SYS_TICK                   (CSP_DEV_NBR)(255u)

#define  CSP_TMR_OPT_PIN_OUT_NONE               (CSP_OPT    )(0u)
#define  CSP_TMR_OPT_PIN_OUT_CLR                (CSP_OPT    )(1u)
#define  CSP_TMR_OPT_PIN_OUT_SET                (CSP_OPT    )(2u)
#define  CSP_TMR_OPT_PIN_OUT_TOGGLE             (CSP_OPT    )(3u)

#define  CSP_TMR_PIN_OUT_NBR_00                 (CSP_DEV_NBR)( 0u)
#define  CSP_TMR_PIN_OUT_NBR_01                 (CSP_DEV_NBR)( 1u)
#define  CSP_TMR_PIN_OUT_NBR_02                 (CSP_DEV_NBR)( 2u)
#define  CSP_TMR_PIN_OUT_NBR_03                 (CSP_DEV_NBR)( 3u)
#define  CSP_TMR_PIN_OUT_NBR_04                 (CSP_DEV_NBR)( 4u)
#define  CSP_TMR_PIN_OUT_NBR_05                 (CSP_DEV_NBR)( 5u)
#define  CSP_TMR_PIN_OUT_NBR_06                 (CSP_DEV_NBR)( 6u)
#define  CSP_TMR_PIN_OUT_NBR_07                 (CSP_DEV_NBR)( 7u)
#define  CSP_TMR_PIN_OUT_NBR_08                 (CSP_DEV_NBR)( 9u)
#define  CSP_TMR_PIN_OUT_NBR_09                 (CSP_DEV_NBR)(10u)
#define  CSP_TMR_PIN_OUT_NBR_10                 (CSP_DEV_NBR)(11u)
#define  CSP_TMR_PIN_OUT_NBR_11                 (CSP_DEV_NBR)(12u)
#define  CSP_TMR_PIN_OUT_NBR_12                 (CSP_DEV_NBR)(13u)
#define  CSP_TMR_PIN_OUT_NBR_13                 (CSP_DEV_NBR)(14u)
#define  CSP_TMR_PIN_OUT_NBR_14                 (CSP_DEV_NBR)(15u)
#define  CSP_TMR_PIN_OUT_NBR_15                 (CSP_DEV_NBR)(16u)

/*
*********************************************************************************************************
*                                             INTERRUPT DEFINES
*********************************************************************************************************
*/

#define CSP_INT_POL_LEVEL_HIGH                 (CSP_OPT)(0u)    /* High level polarity.                                 */
#define CSP_INT_POL_LEVEL_LOW                  (CSP_OPT)(1u)    /* Low  level polarity.                                 */
#define CSP_INT_POL_EDGE_RISING                (CSP_OPT)(2u)    /* Rising edge polarity.                                */
#define CSP_INT_POL_EDGE_POSITIVE              (CSP_OPT)(2u)    
#define CSP_INT_POL_EDGE_FALLING               (CSP_OPT)(3u)    /* Falling edge polarity.                               */
#define CSP_INT_POL_EDGE_NEGATIVE              (CSP_OPT)(3u)  
#define CSP_INT_POL_EDGE_BOTH                  (CSP_OPT)(4u)    /* Edge positive & negative polarity.                   */
#define CSP_INT_POL_NONE                       (CSP_OPT)(5u)

/*
*********************************************************************************************************
*                                                 SPI DEFINES
*********************************************************************************************************
*/

#define  CSP_SPI_NBR_00                         (CSP_DEV_NBR)( 0u)
#define  CSP_SPI_NBR_01                         (CSP_DEV_NBR)( 1u)
#define  CSP_SPI_NBR_02                         (CSP_DEV_NBR)( 2u)
#define  CSP_SPI_NBR_03                         (CSP_DEV_NBR)( 3u)
#define  CSP_SPI_NBR_04                         (CSP_DEV_NBR)( 4u)
#define  CSP_SPI_NBR_05                         (CSP_DEV_NBR)( 5u)
#define  CSP_SPI_NBR_06                         (CSP_DEV_NBR)( 6u)
#define  CSP_SPI_NBR_07                         (CSP_DEV_NBR)( 7u)
#define  CSP_SPI_NBR_08                         (CSP_DEV_NBR)( 8u)
#define  CSP_SPI_NBR_09                         (CSP_DEV_NBR)( 9u)
#define  CSP_SPI_NBR_10                         (CSP_DEV_NBR)(10u)
#define  CSP_SPI_NBR_11                         (CSP_DEV_NBR)(11u)
#define  CSP_SPI_NBR_12                         (CSP_DEV_NBR)(12u)
#define  CSP_SPI_NBR_13                         (CSP_DEV_NBR)(13u)
#define  CSP_SPI_NBR_14                         (CSP_DEV_NBR)(14u)
#define  CSP_SPI_NBR_15                         (CSP_DEV_NBR)(15u)


/*
*********************************************************************************************************
*                                             DATA TYPES
*********************************************************************************************************
*/


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
*                                    DEFINED IN FAMILIES csp_gpio.c
*********************************************************************************************************
*/

void           CSP_GPIO_Init          (void);

                                                                /* GPIO port configuration.                             */              
CPU_BOOLEAN    CSP_GPIO_Cfg           (CSP_DEV_NBR    port_nbr,
                                       CSP_GPIO_MSK   pins,
                                       CSP_OPT        dir,
                                       CSP_OPT_FLAGS  drv_mode,
                                       CPU_BOOLEAN    int_en,
                                       CSP_OPT        int_pol,
                                       CSP_OPT        fnct);
 
                                                                /* Clear a bit.                                         */
void           CSP_GPIO_BitClr        (CSP_DEV_NBR    port_nbr,
                                       CSP_GPIO_MSK   pins);

                                                                /* Set a bit.                                           */
void           CSP_GPIO_BitSet        (CSP_DEV_NBR    port_nbr,
                                       CSP_GPIO_MSK   pins);

                                                                /* Toggle a bit.                                        */
void           CSP_GPIO_BitToggle     (CSP_DEV_NBR    port_nbr,
                                       CSP_GPIO_MSK   pins);

                                                                /* Read value from the port.                            */
CSP_GPIO_MSK   CSP_GPIO_Rd            (CSP_DEV_NBR    port_nbr);

                                                                /* Write value to the port.                             */
void           CSP_GPIO_Wr            (CSP_DEV_NBR    port_nbr,
                                       CSP_GPIO_MSK   val);

                                                                /* Clear pending interrupts.                            */
CSP_GPIO_MSK   CSP_GPIO_IntClr        (CSP_DEV_NBR    port_nbr);


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*                                    DEFINED IN FAMILIES csp_int.c
*********************************************************************************************************
*/

void           CSP_IntInit            (void);                   /* Initialize interrupt controller.                     */

                                                                /* Enable a interrupt source.                           */
void           CSP_IntEn              (CSP_DEV_NBR     int_ctrl,
                                       CSP_DEV_NBR     src_nbr);

                                                                /* Disable a interrupt source.                          */
void           CSP_IntDis             (CSP_DEV_NBR     int_ctrl, 
                                       CSP_DEV_NBR     src_nbr);

                                                                /* Disable all interrupt sources.                       */
void           CSP_IntDisAll          (CSP_DEV_NBR     int_ctrl);

                                                                /* Clear a pending interrupt source.                    */
void           CSP_IntClr             (CSP_DEV_NBR     int_ctrl,
                                       CSP_DEV_NBR     src_nbr);

                                                                /* Configure a interrupt source.                        */
CPU_BOOLEAN    CSP_IntSrcCfg          (CSP_DEV_NBR     int_ctrl,
                                       CSP_DEV_NBR     src_nbr,
                                       CSP_OPT         src_prio,
                                       CSP_OPT         src_pol);

                                                                /* Register an interrupt vector.                        */
CPU_BOOLEAN    CSP_IntVectReg         (CSP_DEV_NBR     int_ctrl,
                                       CSP_DEV_NBR     src_nbr,
                                       CPU_FNCT_PTR    isr_fnct,
                                       void           *p_arg);

                                                                /* Un-register an interrupt vector.                     */
CPU_BOOLEAN    CSP_IntVectUnreg       (CSP_DEV_NBR     int_ctrl,
                                       CSP_DEV_NBR     src_nbr);

                                                                /* Global interrupt handler.                            */
void           CSP_IntHandler         (void);
void           CSP_IntHandlerSrc      (CSP_DEV_NBR     src_nbr);


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*                                    DEFINED IN FAMILIES csp_pm.c
*********************************************************************************************************
*/

void           CSP_PM_Init            (void);                   /* Initialize power management module.                  */

CPU_INT32U     CSP_PM_CPU_ClkFreqGet  (void);                   /* Get CPU frequency.                                   */


void           CSP_PM_PerClkEn        (CSP_DEV_NBR    clk_nbr); /* Enable a peripheral clock.                           */

void           CSP_PM_PerClkDis       (CSP_DEV_NBR    clk_nbr); /* Disable a peripheral clock.                          */

CPU_INT32U     CSP_PM_PerClkFreqGet   (CSP_DEV_NBR    clk_nbr); /* Get a peripheral clock frequency.                    */

CPU_BOOLEAN    CSP_PM_PerClkDivCfg    (CSP_DEV_NBR    clk_nbr,  /* Configure a peripheral clock divider.                */ 
                                       CPU_INT32U     clk_div);

void           CSP_PM_SysClkEn        (CSP_DEV_NBR    clk_nbr); /* Enable a system clock.                               */

void           CSP_PM_SysClkDis       (CSP_DEV_NBR    clk_nbr); /* Disable a system clock.                              */

CPU_INT32U     CSP_PM_SysClkFreqGet   (CSP_DEV_NBR    clk_nbr); /* Get system clock frequency                           */

CPU_BOOLEAN    CSP_PM_SysClkDivCfg    (CSP_DEV_NBR    clk_nbr,  /* Configure a system clock divider.                    */ 
                                       CPU_INT32U     clk_div);


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*                                   DEFINED IN FAMILIES csp_tmr.c
*********************************************************************************************************
*/

void           CSP_TmrInit            (void);                   /* Initialize timer module.                             */

CPU_BOOLEAN    CSP_TmrCfg             (CSP_DEV_NBR    tmr_nbr,
                                       CPU_INT32U     freq);
                                                                /* Configure a timer for compare mode.                  */
CPU_BOOLEAN    CSP_TmrOutCmpCfg       (CSP_DEV_NBR    tmr_nbr,
                                       CSP_DEV_NBR    pin,
                                       CSP_OPT        pin_action,
                                       CPU_INT32U     freq);

void           CSP_TmrIntClr          (CSP_DEV_NBR    tmr_nbr); /* Clear timer interrupt.                               */

void           CSP_TmrRst             (CSP_DEV_NBR    tmr_nbr); /* Reset timer interrupt.                               */

CSP_TMR_VAL    CSP_TmrRd              (CSP_DEV_NBR    tmr_nbr); /* Read the value of a timer.                           */

void           CSP_TmrStart           (CSP_DEV_NBR    tmr_nbr); /* Start a timer.                                       */

void           CSP_TmrStop            (CSP_DEV_NBR    tmr_nbr); /* Stop a timer.                                        */

void           CSP_TmrWr              (CSP_DEV_NBR    tmr_nbr,  /* Write a value to a timer.                            */                                   
                                       CSP_TMR_VAL    tmr_val);


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*                                   DEFINED IN FAMILIES csp_i2c.c
*
* Note(s) : (1) I2C common API limitations.
*               (a) Master mode only.
*               (b) 7-bit address.
*               (c) Only synchronous transfers (blocking) are supported.
*********************************************************************************************************
*/

void           CSP_I2C_Init           (void);

CPU_BOOLEAN    CSP_I2C_Open           (CSP_DEV_NBR    i2c_nbr,
                                       CSP_OPT        addr_mode,
                                       CPU_INT32U     freq,
                                       CSP_OPT        gpio_cfg);

CPU_BOOLEAN    CSP_I2C_Close          (CSP_DEV_NBR    i2c_nbr);

CPU_BOOLEAN    CSP_I2C_WrRd           (CSP_DEV_NBR    i2c_nbr,  /* I2C write follow by a read.                          */
                                       CPU_INT16U     addr,
                                       void          *p_src,
                                       void          *p_dest,
                                       CPU_SIZE_T     src_len,
                                       CPU_SIZE_T     dest_len);
                              
CPU_BOOLEAN    CSP_I2C_RdWr           (CSP_DEV_NBR    i2c_nbr,  /* I2C read follow by a write.                           */
                                       CPU_INT16U     addr,
                                       void          *p_src,
                                       void          *p_dest,
                                       CPU_SIZE_T     src_len,
                                       CPU_SIZE_T     dest_len);

CPU_BOOLEAN    CSP_I2C_Wr             (CSP_DEV_NBR    i2c_nbr,  /* I2C write.                                            */
                                       CPU_INT16U     addr,
                                       void          *p_src,
                                       CPU_SIZE_T     len);

CPU_BOOLEAN    CSP_I2C_Rd             (CSP_DEV_NBR    i2c_nbr,  /* I2C read.                                             */
                                       CPU_INT16U     addr,
                                       void          *p_dest,
                                       CPU_SIZE_T     len);

/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*                                          INTERNAL FUNCTIONS
*********************************************************************************************************
*/

void           CSP_IntVectSet         (CSP_INT_VECT  *p_vect,
                                       CPU_FNCT_PTR   isr_fnct,
                                       void          *p_arg);

void           CSP_IntVectClr         (CSP_INT_VECT  *p_vect);
void           CSP_IntVectDeref       (CSP_INT_VECT  *p_vect);


/*
*********************************************************************************************************
*                                        CONFIGURATION ERRORS
*********************************************************************************************************
*/

#ifndef  CSP_CFG_ARG_CHK_EN
#error  "CSP_CFG_ARG_CHK_EN                     not #define'd in 'csp_cfg.h'              "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "

#elif  ((CSP_CFG_ARG_CHK_EN != DEF_DISABLED) && \
        (CSP_CFG_ARG_CHK_EN != DEF_ENABLED ))
#error  "CSP_CFG_ARG_CHK_EN               illegally #define'd in 'cpu_cfg.h'              "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "

#elif  !defined(CSP_CFG_INT_ISR_EXEC_MEAS_EN)
#error  "CSP_CFG_INT_ISR_EXEC_MEAS_EN           not #define'd in 'csp_cfg.h'              "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "

#elif  ((CSP_CFG_INT_ISR_EXEC_MEAS_EN != DEF_DISABLED) && \
        (CSP_CFG_INT_ISR_EXEC_MEAS_EN != DEF_ENABLED ))
#error  "CSP_CFG_INT_ISR_EXEC_MEAS_EN     illegally #define'd in 'csp_cfg.h'              "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "

#elif  (CSP_CFG_INT_ISR_EXEC_MEAS_EN == DEF_ENABLED) && \
       (CPU_CFG_TS_EN                == DEF_DISABLED)
#error  "CPU_CFG_TS_EN                   illegally #define'd in 'csp_cfg.h'               "
#error  "CPU's Time stamp feature MUST be enabled to measure interrupt ISR execution time "
#endif

#elif  !defined(CSP_CFG_INT_ISR_ARG_EN)
#error  "CSP_CFG_INT_ISR_ARG_EN                 not #define'd in 'csp_cfg.h'              "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "

#elif  ((CSP_CFG_INT_ISR_ARG_EN != DEF_DISABLED) && \
        (CSP_CFG_INT_ISR_ARG_EN != DEF_ENABLED ))
#error  "CSP_CFG_INT_ISR_ARG_EN     illegally #define'd in 'csp_cfg.h'                    "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "


#elif  !defined(CSP_CFG_INT_ISR_ARG_EN)
#error  "CSP_CFG_INT_ISR_ARG_EN                 not #define'd in 'csp_cfg.h'              "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "

#elif  ((CSP_CFG_INT_ISR_ARG_EN != DEF_DISABLED) && \
        (CSP_CFG_INT_ISR_ARG_EN != DEF_ENABLED ))
#error  "CSP_CFG_INT_ISR_ARG_EN     illegally #define'd in 'csp_cfg.h'                    "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "


#elif  !defined(CSP_CFG_INT_NESTING_EN)
#error  "CSP_CFG_INT_NESTING_EN                 not #define'd in 'csp_cfg.h'              "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "

#elif  ((CSP_CFG_INT_NESTING_EN != DEF_DISABLED) && \
        (CSP_CFG_INT_NESTING_EN != DEF_ENABLED ))
#error  "CSP_CFG_INT_NESTING_EN     illegally #define'd in 'csp_cfg.h'                    "
#error  "                                [MUST be  DEF_DISABLED]                          "
#error  "                                [     ||  DEF_ENABLED ]                          "

#ifndef  CSP_CFG_PM_MAIN_XTAL_FREQ_HZ
#error  "CSP_CFG_PM_MAIN_XTAL_FREQ_HZ         not #define'd in 'csp_cfg.h'                "
#error  "                             [MUST be  > 0]                                      "

#elif   CSP_CFG_PM_MAIN_XTAL_FREQ_HZ < 0u
#error  "CSP_CFG_PM_MAIN_XTAL_FREQ_HZ   illegally #define'd in 'csp_cfg.h'                "
#error  "                             [MUST be  > 0]                                      "
#endif

#ifndef  CSP_CFG_PM_SLOW_XTAL_FREQ_HZ
#error  "CSP_CFG_PM_SLOW_XTAL_FREQ_HZ         not #define'd in 'csp_cfg.h'                "
#error  "                             [MUST be  > 0]                                      "

#elif   CSP_CFG_PM_SLOW_XTAL_FREQ_HZ < 0u
#error  "CSP_CFG_PM_SLOW_XTAL_FREQ_HZ   illegally #define'd in 'csp_cfg.h'                "
#error  "                             [MUST be  > 0]                                      "
#endif


/*
*********************************************************************************************************
*                                             MODULE END
*********************************************************************************************************
*/

#endif                                                          /* End of CSP module include.                           */
