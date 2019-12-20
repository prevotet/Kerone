/*
*********************************************************************************************************
*                                               uC/CSP
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
*                                      POWER & CLOCK MANAGEMENT
*
*                                          Xilinx Zynq-7000
*
* Filename      : csp_pm.c
* Version       : V1.00
* Programmer(s) : JPB
*********************************************************************************************************
* Note(s)       : 
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/

#define    CSP_PM_MODULE
#include   <csp.h>
#include   <math.h>


/*
*********************************************************************************************************
*                                            LOCAL DEFINES
*********************************************************************************************************
*/

                                                                /* --------------------- CLOCK SOURCES ---------------- */
#define  CSP_PM_CLK_SRC_NBR_OSC0                             0u
#define  CSP_PM_CLK_SRC_NBR_OSC1                             1u


                                                                /* Clock Manager Base.                                  */   
#define  XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE                           (CPU_INT32U )(0xFFA04000)

#define  XC7Z020_CSP_PM_REG_SYS_CTRL                              (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x00))
#define  XC7Z020_CSP_PM_REG_SYS_PLL_BYPASS                        (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x04))
#define  XC7Z020_CSP_PM_REG_SYS_LOCK_STATUS                       (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x08))
#define  XC7Z020_CSP_PM_REG_SYS_INTERRUPT_ENABLE                  (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x0C))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_VCO_CTRL                     (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x20))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_MISC_CTRL                    (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x24))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_MPU_CLK_CTRL                 (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x28))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_MAIN_CLK_CTRL                (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x2C))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_DBG_AT_CLK_CTRL              (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x30))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_MAIN_QSPI_CLK_CTRL           (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x34))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_MAIN_NAND_SDMMC_CLK_CTRL     (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x38))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_CFG_S2F_USER0_CLK_CTRL       (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x3C))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_ENABLE                       (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x40))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_MAIN_DIVIDE                  (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x44))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_DBG_DIVIDE                   (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x48))
#define  XC7Z020_CSP_PM_REG_SYS_MAIN_DBG_TRACE_DIVIDE             (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x4C))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_VCO_CTRL                   (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x60))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_MISC_CTRL                  (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x64))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_EMAC0_CLK_CTRL             (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x68))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_EMAC1_CLK_CTRL             (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x6C))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_PERIPH_QSPI_CLK_CTRL       (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x70))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_PERIPH_NAND_SDMMC_CLK_CTRL (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x74))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_PERIPH_BASE_CLK_CTRL       (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x78))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_S2F_USER1_CLK_CTRL         (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x7C))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_ENABLE                     (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x80))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_DIVIDE                     (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x84))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_GPIO_DB_DIVIDE             (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x88))
#define  XC7Z020_CSP_PM_REG_SYS_PERIPH_FLASH_CLK_SRC              (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0x8C))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_VCO_CTRL                    (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xA0))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_MISC_CTRL                   (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xA4))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_DDR_DQS_CLK_CTRL            (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xA8))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_DDR_2X_DQS_CLK_CTRL         (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xAC))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_DDR_DQ_CLK_CTRL             (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xB0))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_DDR_HR_CLK_CTRL             (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xB4))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_S2F_SDRAM_REF_CLK_CTRL      (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xB8))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_S2F_USER2_CLK_CTRL          (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xBC))
#define  XC7Z020_CSP_PM_REG_SYS_SDRAM_ENABLE                      (* (CPU_REG32 *)(XC7Z020_CSP_PM_ADDR_CLK_MNGR_BASE + 0xC0))


/*
*********************************************************************************************************
*                                           LOCAL CONSTANTS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                          LOCAL DATA TYPES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            LOCAL TABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                       LOCAL GLOBAL VARIABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            LOCAL MACRO's
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                      LOCAL FUNCTION PROTOTYPES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                     LOCAL CONFIGURATION ERRORS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*********************************************************************************************************
*                                           LOCAL FUNCTIONS
*********************************************************************************************************
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                            CSP_PM_Init()
*
* Description : Initialize power management module.
*
* Argument(s) : none.
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_PM_Init (void) 
{

}   


/*
*********************************************************************************************************
*                                       CSP_PM_CPU_ClkFreqGet()
*
* Description : Return CPU clock frequency.
*                   
* Argument(s) : None.
*  
* Return(s)   : The CPU frequency in Hertz.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

CPU_INT32U  CSP_PM_CPU_ClkFreqGet (void)
{
    CPU_INT32U  cpu_freq;
	
	
	cpu_freq = CSP_PM_SysClkFreqGet(CSP_PM_SYS_CLK_NBR_MAIN_PLL);
	
    return (cpu_freq);
}


/*
*********************************************************************************************************
*                                         CSP_PM_PerClkCfg()
*
* Description : Configure peripheral clock divider.
*                   
* Argument(s) : clk_nbr     Peripheral clock number. (see note #1).
*  
*               clk_div     Peripheral clock divider.
*
* Return(s)   : DEF_OK,    If the clock was configured,
*               DEF_FAIL,  otherwise.
*
* Caller(s)   : Application.
*
* Note(s)     : (1) Peripheral clk number are defined in 'csp_grp.h'.
*
*                       CSP_PER_CLK_NBR_XX  where 'XX' is the peripheral clock name.
*********************************************************************************************************
*/

CPU_BOOLEAN  CSP_PM_PerClkCfg (CSP_DEV_NBR  clk_nbr,
                               CPU_SIZE_T   clk_div)
{
    return (DEF_OK);
}    


/*
*********************************************************************************************************
*                                          CSP_PM_PerClkEn()
*
* Description : Enable a peripheral clock.
*                   
* Argument(s) : clk_nbr     Peripheral clock number. (see 'CSP_PM_PerClkCfg()' note #1).
*
* Return(s)   : none.
*
* Caller(s)   : Application.
*
* Note(s)     : none.
*********************************************************************************************************
*/

void  CSP_PM_PerClkEn (CSP_DEV_NBR clk_nbr)
{
#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)  
    if (clk_nbr > CSP_PM_PER_CLK_NBR_MAX) {
        return;
	}
#endif
	
    DEF_BIT_SET(XC7Z020_CSP_PM_REG_SYS_PERIPH_ENABLE, clk_nbr);
}


/*
*********************************************************************************************************
*                                         CSP_PM_PerClkDis()
*
* Description : Disable a peripheral clock.
*                   
* Argument(s) : clk_nbr     Peripheral clock number. (see 'CSP_PM_PerClkCfg()' note #1).
*
* Return(s)   : none
*
* Caller(s)   : Application.
*
* Note(s)     : none.
*********************************************************************************************************
*/

void  CSP_PM_PerClkDis (CSP_DEV_NBR  clk_nbr)
{
#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)  
    if (clk_nbr > CSP_PM_PER_CLK_NBR_MAX) {
        return;
	}
#endif
	
    DEF_BIT_CLR(XC7Z020_CSP_PM_REG_SYS_PERIPH_ENABLE, clk_nbr);
}


/*
*********************************************************************************************************
*                                        CSP_PM_PerClkFreqGet()
*
* Description : Return the Peripheral clock
*
* Argument(s) : clk_nbr     Peripheral clock number. (see 'CSP_PM_PerClkCfg()' note #1).
*
* Return(s)   : The peripheral clock frequency.
*
* Caller(s)   : Application.
*
* Note(s)     : none.
*********************************************************************************************************
*/

CPU_INT32U  CSP_PM_PerClkFreqGet (CSP_DEV_NBR  clk_nbr)
{
	CPU_INT32U  per_freq;


    switch (clk_nbr) {
        case CSP_PM_PER_CLK_NBR_APU:
        	 per_freq = 667000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_DDR:
        	 per_freq = 533333313;
        	 break;

        case CSP_PM_PER_CLK_NBR_DCI:
        	 per_freq = 10159000;
        	 break;

        case CSP_PM_PER_CLK_NBR_QSPI:
        	 per_freq = 200000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_SMC:
        	 per_freq = 100000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_ENET0:
        	 per_freq = 25000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_ENET1:
        	 per_freq = 125000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_USB0:
        	 per_freq = 60000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_USB1:
        	 per_freq = 60000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_SDIO:
        	 per_freq = 50000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_UART:
        	 per_freq = 50000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_SPI:
        	 per_freq = 200000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_I2C:
        	 per_freq = 111111115;
        	 break;

        case CSP_PM_PER_CLK_NBR_WDT:
        	 per_freq = 25000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_TTC:
        	 per_freq = 50000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_CAN:
        	 per_freq = 23809500;
        	 break;

        case CSP_PM_PER_CLK_NBR_PCAP:
        	 per_freq = 200000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_TPIU:
        	 per_freq = 200000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_FPGA0:
        	 per_freq = 50000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_FPGA1:
        	 per_freq = 50000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_FPGA2:
        	 per_freq = 50000000;
        	 break;

        case CSP_PM_PER_CLK_NBR_FPGA3:
        	 per_freq = 50000000;
        	 break;

	    default:
 		     return (DEF_FAIL);
	}	
    
    return (per_freq);
}


/*
*********************************************************************************************************
*                                          CSP_PM_SysClkEn()
*
* Description : Enable a System Clock.
*
* Argument(s) : clk_nbr     System clock number (see note #1)
*
* Return(s)   : none.
*
* Caller(s)   : Application.
*
* Note(s)     : (1) System clks number are defined in 'csp_grp.h'.
*
*                       CSP_SYS_CLK_NBR_XX  where 'XX' is the system clock name.
*********************************************************************************************************
*/

void  CSP_PM_SysClkEn (CSP_DEV_NBR  clk_nbr)
{
#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    if (clk_nbr > CSP_PM_SYS_CLK_NBR_MAX) {
        return;
	}
#endif 
	
	switch (clk_nbr) {
     	case CSP_PM_SYS_CLK_NBR_MAIN_PLL:
		    DEF_BIT_SET(XC7Z020_CSP_PM_REG_SYS_MAIN_VCO_CTRL, DEF_BIT_00);
	        break;
			
    	case CSP_PM_SYS_CLK_NBR_SDRAM_PLL:
		    DEF_BIT_SET(XC7Z020_CSP_PM_REG_SYS_SDRAM_VCO_CTRL, DEF_BIT_00);
	        break;		  
			
	    case CSP_PM_SYS_CLK_NBR_PERIPH_PLL:
		    DEF_BIT_SET(XC7Z020_CSP_PM_REG_SYS_PERIPH_VCO_CTRL, DEF_BIT_00);
	        break;		  		    
	}
}


/*
*********************************************************************************************************
*                                         CSP_PM_SysClkDis()
*
* Description : Disable a System Clock
*                   
* Argument(s) : clk_nbr     System clock number (see 'CSP_PM_SysClkEn()'note #1)
*
* Return(s)   : none.
*
* Caller(s)   : Application.
*
* Note(s)     : none.
*********************************************************************************************************
*/

void  CSP_PM_SysClkDis (CSP_DEV_NBR clk_nbr)
{
#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    if (clk_nbr > CSP_PM_SYS_CLK_NBR_MAX) {
        return;
	}
#endif 
	
	switch (clk_nbr) {
     	case CSP_PM_SYS_CLK_NBR_MAIN_PLL:
		    DEF_BIT_CLR(XC7Z020_CSP_PM_REG_SYS_MAIN_VCO_CTRL, DEF_BIT_00);
	        break;
			
    	case CSP_PM_SYS_CLK_NBR_SDRAM_PLL:
		    DEF_BIT_CLR(XC7Z020_CSP_PM_REG_SYS_SDRAM_VCO_CTRL, DEF_BIT_00);
	        break;		  
			
	    case CSP_PM_SYS_CLK_NBR_PERIPH_PLL:
		    DEF_BIT_CLR(XC7Z020_CSP_PM_REG_SYS_PERIPH_VCO_CTRL, DEF_BIT_00);
	        break;		  		    
	}
}


/*
*********************************************************************************************************
*                                       CSP_PM_SysClkFreqGet()
*
* Description : Return the frequency for a specific system clock.
*                   
* Argument(s) : clk_nbr     System clock number (see 'CSP_PM_SysClkEn()'note #1)
*
* Return(s)   : The system clock frequency.
*
* Caller(s)   : Application.
*
* Note(s)     : none.
*********************************************************************************************************
*/

CPU_INT32U  CSP_PM_SysClkFreqGet (CSP_DEV_NBR  clk_nbr)
{
	CPU_INT32U  pll_freq;

	pll_freq = 333333333;
    
    return (pll_freq);
}


/*
*********************************************************************************************************
*                                         CSP_PM_SysClkDivCfg()
*
* Description : Configure system clock divider.
*                   
* Argument(s) : clk_nbr     System clock number (see 'CSP_PM_SysClkEn()'note #1)
*  
*               clk_div     System clock divider.
*
* Return(s)   : DEF_OK,    If the clock was configured,
*               DEF_FAIL,  otherwise.
*
* Caller(s)   : Application.
*
* Note(s)     : (1) Peripheral clk number are defined in 'csp_grp.h'.
*
*                       CSP_PER_CLK_NBR_XX  where 'XX' is the peripheral clock name.
*********************************************************************************************************
*/

CPU_BOOLEAN  CSP_PM_SysClkDivCfg (CSP_DEV_NBR  clk_nbr,
                                  CPU_SIZE_T   clk_div)
{
    (void)&clk_nbr;
    (void)&clk_div;
    
    return (DEF_OK);
}


