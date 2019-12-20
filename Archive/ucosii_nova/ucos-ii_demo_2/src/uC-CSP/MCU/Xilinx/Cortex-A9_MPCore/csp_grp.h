/*
*********************************************************************************************************
*                                              uC/CSP
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
*                                       FAMILY DEFINITION & API
*
*                                          Xilinx Zynq-7000
*
* Filename      : csp_grp.h
* Version       : V1.00
* Programmer(s) : JPB
*********************************************************************************************************
* Note(s)       : 
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               MODULE
*********************************************************************************************************
*/

#ifndef  CSP_GRP_MODULE_PRESENT
#define  CSP_GRP_MODULE_PRESENT


/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               EXTERNS
*********************************************************************************************************
*/

#ifdef   CSP_GRP_MODULE
#define  CSP_GRP_EXT
#else
#define  CSP_GRP_EXT  extern
#endif


/*
*********************************************************************************************************
*                                        DEFAULT CONFIGURATION
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                         FAMILY IDENTIFIERS
*********************************************************************************************************
*/

#define  CSP_GRP_ID_XC7Z020
#define  CSP_GRP_NAME                      "Zynq-7000"


/*
*********************************************************************************************************
*                                 INTERRUPT CONTROLLER DEVICE NUMBERS
*********************************************************************************************************
*/

#define  CSP_INT_CTRL_NBR_MAIN             (CSP_DEV_NBR)(0u)


/*
*********************************************************************************************************
*                                          INTERRUPT SOURCES
*
* Note(s) : (1) Interrupt controller sources #define's use the following standard:
*
*               #define  CSP_INT_SRC_NBR_<PER>_<EVENT>_<PER_NBR>
*
*               where 
*
*                   <PER>      Peripheral name (UART, ETHER, DMA, USB, etc)
*                   <PER_NBR>  Peripheral number. (00, 01, 02, etc)
*                   <EVENT>    Interrupt event (RX, TX, MATCH, ALERT, TO, etc)
*                              Empty for multiple events interrupts.
*
*              #define  CSP_INT_SRC_NBR_UART_RX_00    UART 00 receive interrupt.
*              #define  CSP_INT_SRC_NBR_UART_TX_00    UART 01 receive interrupt. 
*
*            (2) 'CSP_INT_SRC_NBR_MAX' defines maximum number of interrupts in the interrupt controller.
*                   
*            (3) A value of 32 is added to each IRQ source number in the source table for the global 
*                interrupt controller.
*********************************************************************************************************
*/

                                                                /* Private Peripheral Interrupts (PPI)                  */
#define  CSP_INT_SRC_NBR_GLOBAL_TMR        (CSP_DEV_NBR)(27u)   /* SCU Global Timer interrupt                           */
#define  CSP_INT_SRC_NBR_FIQ               (CSP_DEV_NBR)(28u)   /* FIQ from FPGA fabric                                 */
#define  CSP_INT_SRC_NBR_SCU_TMR           (CSP_DEV_NBR)(29u)   /* SCU Private Timer interrupt                          */
#define  CSP_INT_SRC_NBR_SCU_WDT           (CSP_DEV_NBR)(30u)   /* SCU Private WDT interrupt                            */
#define  CSP_INT_SRC_NBR_IRQ	           (CSP_DEV_NBR)(31u)   /* IRQ from FPGA fabric                                 */

                                                                /* Shared Peripheral Interrupts (SPI)                   */
#define  CSP_INT_SRC_NBR_CORE_PARITY_00    (CSP_DEV_NBR)(32u)
#define  CSP_INT_SRC_NBR_CORE_PARITY_01    (CSP_DEV_NBR)(33u)
#define  CSP_INT_SRC_NBR_L2CC              (CSP_DEV_NBR)(34u)
#define  CSP_INT_SRC_NBR_OCMINTR           (CSP_DEV_NBR)(35u)
#define  CSP_INT_SRC_NBR_ECC               (CSP_DEV_NBR)(36u)
#define  CSP_INT_SRC_NBR_PMU_00            (CSP_DEV_NBR)(37u)
#define  CSP_INT_SRC_NBR_PMU_01            (CSP_DEV_NBR)(38u)
#define  CSP_INT_SRC_NBR_SYSMON            (CSP_DEV_NBR)(39u)
#define  CSP_INT_SRC_NBR_DVC               (CSP_DEV_NBR)(40u)
#define  CSP_INT_SRC_NBR_WDT               (CSP_DEV_NBR)(41u)
#define  CSP_INT_SRC_NBR_TTC0_00           (CSP_DEV_NBR)(42u)
#define  CSP_INT_SRC_NBR_TTC0_01           (CSP_DEV_NBR)(43u)
#define  CSP_INT_SRC_NBR_TTC0_02           (CSP_DEV_NBR)(44u)
#define  CSP_INT_SRC_NBR_DMA_ABORT_00      (CSP_DEV_NBR)(45u)
#define  CSP_INT_SRC_NBR_DMA_00            (CSP_DEV_NBR)(46u)
#define  CSP_INT_SRC_NBR_DMA_01            (CSP_DEV_NBR)(47u)
#define  CSP_INT_SRC_NBR_DMA_02            (CSP_DEV_NBR)(48u)
#define  CSP_INT_SRC_NBR_DMA_03            (CSP_DEV_NBR)(49u)
#define  CSP_INT_SRC_NBR_SMC               (CSP_DEV_NBR)(50u)
#define  CSP_INT_SRC_NBR_QSPI              (CSP_DEV_NBR)(51u)
#define  CSP_INT_SRC_NBR_GPIO              (CSP_DEV_NBR)(52u)
#define  CSP_INT_SRC_NBR_USB_00            (CSP_DEV_NBR)(53u)
#define  CSP_INT_SRC_NBR_GEM_00            (CSP_DEV_NBR)(54u)
#define  CSP_INT_SRC_NBR_GEM_WAKE_00       (CSP_DEV_NBR)(55u)
#define  CSP_INT_SRC_NBR_SDIO_00           (CSP_DEV_NBR)(56u)
#define  CSP_INT_SRC_NBR_I2C_00            (CSP_DEV_NBR)(57u)
#define  CSP_INT_SRC_NBR_SPI_00            (CSP_DEV_NBR)(58u)
#define  CSP_INT_SRC_NBR_UART_00           (CSP_DEV_NBR)(59u)
#define  CSP_INT_SRC_NBR_CAN_00            (CSP_DEV_NBR)(60u)
#define  CSP_INT_SRC_NBR_FPGA_00           (CSP_DEV_NBR)(61u)
#define  CSP_INT_SRC_NBR_FPGA_01           (CSP_DEV_NBR)(62u)
#define  CSP_INT_SRC_NBR_FPGA_02           (CSP_DEV_NBR)(63u)
#define  CSP_INT_SRC_NBR_FPGA_03           (CSP_DEV_NBR)(64u)
#define  CSP_INT_SRC_NBR_FPGA_04           (CSP_DEV_NBR)(65u)
#define  CSP_INT_SRC_NBR_FPGA_05           (CSP_DEV_NBR)(66u)
#define  CSP_INT_SRC_NBR_FPGA_06           (CSP_DEV_NBR)(67u)
#define  CSP_INT_SRC_NBR_FPGA_07           (CSP_DEV_NBR)(68u)
#define  CSP_INT_SRC_NBR_TTC1_00           (CSP_DEV_NBR)(69u)
#define  CSP_INT_SRC_NBR_TTC1_01           (CSP_DEV_NBR)(70u)
#define  CSP_INT_SRC_NBR_TTC1_02           (CSP_DEV_NBR)(71u)
#define  CSP_INT_SRC_NBR_DMA_04            (CSP_DEV_NBR)(72u)
#define  CSP_INT_SRC_NBR_DMA_05            (CSP_DEV_NBR)(73u)
#define  CSP_INT_SRC_NBR_DMA_06            (CSP_DEV_NBR)(74u)
#define  CSP_INT_SRC_NBR_DMA_07            (CSP_DEV_NBR)(75u)
#define  CSP_INT_SRC_NBR_USB_01            (CSP_DEV_NBR)(76u)
#define  CSP_INT_SRC_NBR_GEM_01            (CSP_DEV_NBR)(77u)
#define  CSP_INT_SRC_NBR_GEM_WAKE_01       (CSP_DEV_NBR)(78u)
#define  CSP_INT_SRC_NBR_SDIO_01           (CSP_DEV_NBR)(79u)
#define  CSP_INT_SRC_NBR_I2C_01            (CSP_DEV_NBR)(80u)
#define  CSP_INT_SRC_NBR_SPI_01            (CSP_DEV_NBR)(81u)
#define  CSP_INT_SRC_NBR_UART_01           (CSP_DEV_NBR)(82u)
#define  CSP_INT_SRC_NBR_CAN_01            (CSP_DEV_NBR)(83u)
#define  CSP_INT_SRC_NBR_FPGA_08           (CSP_DEV_NBR)(84u)
#define  CSP_INT_SRC_NBR_FPGA_09           (CSP_DEV_NBR)(85u)
#define  CSP_INT_SRC_NBR_FPGA_10           (CSP_DEV_NBR)(86u)
#define  CSP_INT_SRC_NBR_FPGA_11           (CSP_DEV_NBR)(87u)
#define  CSP_INT_SRC_NBR_FPGA_12           (CSP_DEV_NBR)(88u)
#define  CSP_INT_SRC_NBR_FPGA_13           (CSP_DEV_NBR)(89u)
#define  CSP_INT_SRC_NBR_FPGA_14           (CSP_DEV_NBR)(90u)
#define  CSP_INT_SRC_NBR_FPGA_15           (CSP_DEV_NBR)(91u)

#define  CSP_INT_SRC_NBR_MAX               (CSP_DEV_NBR)(256u)  /* Maximum number of interrupts.                        */


/*
*********************************************************************************************************
*                                          INTERRUPT PRIORITIES
*********************************************************************************************************
*/

#define  CSP_INT_SRC_PRIO_HIGHEST          (CSP_OPT)(16u)
#define  CSP_INT_SRC_PRIO_LOWEST           (CSP_OPT)(CSP_INT_SRC_NBR_MAX - 1u)


/*
*********************************************************************************************************
*                                     PERIPHERALS CLOCKS DEFINES
*
* Note(s) : (1) The peripheral's clock #define's use the following standard.
*        
*                   #define  CSP_PM_PER_CLK_NBR_<PER>_<PER_NBR>
*
*                   where,
*
*                   <PER>      Peripheral clock name.
*                   <PER_NBR>  Peripheral clock number identifier.
*
*********************************************************************************************************
*/

                                                                /* --------------- PERIPHERAL CLOCK DEFINES ----------- */
#define  CSP_PM_PER_CLK_NBR_APU            (CSP_DEV_NBR)( 0u)
#define  CSP_PM_PER_CLK_NBR_DDR            (CSP_DEV_NBR)( 1u)
#define  CSP_PM_PER_CLK_NBR_DCI            (CSP_DEV_NBR)( 2u)
#define  CSP_PM_PER_CLK_NBR_QSPI           (CSP_DEV_NBR)( 3u)
#define  CSP_PM_PER_CLK_NBR_SMC            (CSP_DEV_NBR)( 4u)
#define  CSP_PM_PER_CLK_NBR_ENET0          (CSP_DEV_NBR)( 5u)
#define  CSP_PM_PER_CLK_NBR_ENET1          (CSP_DEV_NBR)( 6u)
#define  CSP_PM_PER_CLK_NBR_USB0           (CSP_DEV_NBR)( 7u)
#define  CSP_PM_PER_CLK_NBR_USB1           (CSP_DEV_NBR)( 8u)
#define  CSP_PM_PER_CLK_NBR_SDIO           (CSP_DEV_NBR)( 9u)
#define  CSP_PM_PER_CLK_NBR_UART           (CSP_DEV_NBR)(10u)
#define  CSP_PM_PER_CLK_NBR_SPI            (CSP_DEV_NBR)(11u)
#define  CSP_PM_PER_CLK_NBR_I2C            (CSP_DEV_NBR)(12u)
#define  CSP_PM_PER_CLK_NBR_WDT            (CSP_DEV_NBR)(13u)
#define  CSP_PM_PER_CLK_NBR_TTC            (CSP_DEV_NBR)(14u)
#define  CSP_PM_PER_CLK_NBR_CAN            (CSP_DEV_NBR)(15u)
#define  CSP_PM_PER_CLK_NBR_PCAP           (CSP_DEV_NBR)(16u)
#define  CSP_PM_PER_CLK_NBR_TPIU           (CSP_DEV_NBR)(17u)
#define  CSP_PM_PER_CLK_NBR_FPGA0          (CSP_DEV_NBR)(18u)
#define  CSP_PM_PER_CLK_NBR_FPGA1          (CSP_DEV_NBR)(19u)
#define  CSP_PM_PER_CLK_NBR_FPGA2          (CSP_DEV_NBR)(20u)
#define  CSP_PM_PER_CLK_NBR_FPGA3          (CSP_DEV_NBR)(21u)

#define  CSP_PM_PER_CLK_NBR_MAX            (CSP_DEV_NBR)(22u)   /* Maximum number of peripherals clocks.                */



/*
*********************************************************************************************************
*                                        SYSTEM CLOCKS DEFINES
*
* Note(s) : (1) The system clock #define's use the following standard.
*        
*                   #define  CSP_PM_SYS_CLK_NBR_<SYS>_<SYS_NBR>
*
*                   where,
*
*                   <SYS>      System clock number name.
*                   <SYS_NBR>  System clock number identifier.
*
*********************************************************************************************************
*/

#define  CSP_PM_SYS_CLK_NBR_MAIN_PLL       (CSP_DEV_NBR)(0u)
#define  CSP_PM_SYS_CLK_NBR_SDRAM_PLL      (CSP_DEV_NBR)(1u)
#define  CSP_PM_SYS_CLK_NBR_PERIPH_PLL     (CSP_DEV_NBR)(2u)

#define  CSP_PM_SYS_CLK_NBR_MAX            (CSP_DEV_NBR)(3u)    /* Maximum number of system clocks.                     */


/*
*********************************************************************************************************
*                                           GPIO PORT MASK
*********************************************************************************************************
*/

typedef  CPU_INT32U  CSP_GPIO_MSK;                              /* GPIOs port are 32-bits.                              */


/*
*********************************************************************************************************
*                                        TIMER VALUE DATA TYPE
*********************************************************************************************************
*/

typedef  CPU_INT32U  CSP_TMR_VAL;                               /* Timers are 32-bits wide.                             */


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
*                                        CONFIGURATION ERRORS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             MODULE END
*********************************************************************************************************
*/

#endif                                                          /* End of CSP_GRP module include.                      */

