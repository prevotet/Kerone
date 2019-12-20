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
*                                   GENERAL PURPOSE I/O CONTROLLER
*
*                                         Xilinx Zynq-7000
*
* Filename      : csp_gio.c
* Version       : V1.00
* Programmer(s) : JPB
*********************************************************************************************************
* Note(s)       : The GPIO is implemented in the FPGA, it is not part of the native PS.
*                 That means that you have to use the Xilinx's PA and XPS tools to generate
*                 a custom Bitstream that contains the GPIO PI and then download it into the FPGA.
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/

#define    CSP_GPIO_MODULE
#include   <csp.h>

/*
*********************************************************************************************************
*                                            LOCAL DEFINES
*********************************************************************************************************
*/

#define  XC7Z020_CSP_GPIO_0_ADDR_REG_BASE                  (CPU_INT32U )(0xFF20B000)
#define  XC7Z020_CSP_GPIO_0_REG_SWPORTA                 (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x00))
#define  XC7Z020_CSP_GPIO_0_REG_SWPORTA_DDR             (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x04))
#define  XC7Z020_CSP_GPIO_0_REG_PORTA_CTL               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x08))
#define  XC7Z020_CSP_GPIO_0_REG_SWPORTB                 (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x0C))
#define  XC7Z020_CSP_GPIO_0_REG_SWPORTB_DDR             (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x10))
#define  XC7Z020_CSP_GPIO_0_REG_PORTB_CTL               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x14))
#define  XC7Z020_CSP_GPIO_0_REG_SWPORTC                 (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x18))
#define  XC7Z020_CSP_GPIO_0_REG_SWPORTC_DDR             (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x1C))
#define  XC7Z020_CSP_GPIO_0_REG_PORTC_CTL               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x20))
#define  XC7Z020_CSP_GPIO_0_REG_SWPORTD                 (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x24))
#define  XC7Z020_CSP_GPIO_0_REG_SWPORTD_DDR             (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x28))
#define  XC7Z020_CSP_GPIO_0_REG_PORTD_CTL               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x2C))
#define  XC7Z020_CSP_GPIO_0_REG_INTEN                   (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x30))
#define  XC7Z020_CSP_GPIO_0_REG_INTMASK                 (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x34))
#define  XC7Z020_CSP_GPIO_0_REG_INTTYPE_LEVEL           (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x38))
#define  XC7Z020_CSP_GPIO_0_REG_INT_POLARITY            (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x3C))
#define  XC7Z020_CSP_GPIO_0_REG_INTSTATUS               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x40))
#define  XC7Z020_CSP_GPIO_0_REG_RAW_INTSTATUS           (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x44))
#define  XC7Z020_CSP_GPIO_0_REG_DEBOUNCE                (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x48))
#define  XC7Z020_CSP_GPIO_0_REG_PORTA_EOI               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x4C))
#define  XC7Z020_CSP_GPIO_0_REG_EXT_PORTA               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x50))
#define  XC7Z020_CSP_GPIO_0_REG_EXT_PORTB               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x54))
#define  XC7Z020_CSP_GPIO_0_REG_EXT_PORTC               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x58))
#define  XC7Z020_CSP_GPIO_0_REG_EXT_PORTD               (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x5C))
#define  XC7Z020_CSP_GPIO_0_REG_LS_SYNC                 (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x60))
#define  XC7Z020_CSP_GPIO_0_REG_ID_CODE                 (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x64))
#define  XC7Z020_CSP_GPIO_0_REG_COMP_VERSION            (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x6C))
#define  XC7Z020_CSP_GPIO_0_REG_CONFIG_REG1             (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x70))
#define  XC7Z020_CSP_GPIO_0_REG_CONFIG_REG2             (* (CPU_REG32 *)(XC7Z020_CSP_GPIO_0_ADDR_REG_BASE + 0x74))


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
*                                          CSP_GPIO_Init()
*
* Description : Initialize general purpose I/O module.
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

void  CSP_GPIO_Init (void) 
{

}    



/*
*********************************************************************************************************
*                                          CSP_GPIO_Cfg()
*
* Description : Configure a set of pins for a specific I/O port
*
* Argument(s) : port_nbr    GPIO port number. (see note #1)
*
*               pins        Bit mask specifying which pins to configure.
*
*               dir         Pins direction :
*                               CSP_GPIO_DIR_IN                  Pins are configured as inputs.
*                               CSP_GPIO_DIR_OUT                 Pins are configured as outputs.
*                               CSP_GPIO_DIR_INOUT               Pins are configured as bidirectional pins.
*
*               drv_mode    Pins Drive mode flags (not used):
*                               CSP_GPIO_FLAG_MODE_NONE          Pins have neither pull-down nor pull-up.
*                               CSP_GPIO_FLAG_MODE_PULLUP        Pins have a pull-up   resistor enabled.
*                               CSP_GPIO_FLAG_MODE_PULLDOWN      Pins have a pull-down resistor enabled.
*                               CSP_GPIO_FLAG_MODE_SCH_TRIGGER   Pins have schmitt trigger.
*                               CSP_GPIO_FLAG_MODE_OPEN_DRAIN    Pins have open drain enabled.
*
*               int_en      Pin Interrupt enable:
*                               DEF_YES                          Pin interrupt is enabled.
*                               DEF_NO                           Pin Interrupt is disabled.
*
*               int_pol     Pin interrupt polarity:
*                               CSP_INT_POL_LEVEL_HIGH           Pin interrupt is activated on a high level.
*                               CSP_INT_POL_LEVEL_LOW            Pin interrupt is activated on a low level.
* 
*                               CSP_INT_POL_EDGE_POSITIVE        Pin interrupt is activated on the positive edge.
*                               CSP_INT_POL_EDGE_NEGATIVE        Pin interrupt is activated on the negative edge.
*                               CSP_INT_POL_EDGE_BOTH            Pin interrupt is activated on both edges.
*             
*               fnct        Pins function (see note #2).
*
* Return(s)   : DEF_OK    If the pins were configured successfully.
*               DEF_FAIL  If the pins could not be configured successfully.
*
* Caller(s)   : Application.
*
* Note(s)     : (1) The 'port_nbr' argument depends on the number of GPIO ports available for this 
*                   family definition.
*
*                   (a) Port numbers identifiers can be found in 'csp.h':
*
*                           CSP_GPIO_PORT_NBR_00
*                           CSP_GPIO_PORT_NBR_01
*                           CSP_GPIO_PORT_NBR_A
*                           CSP_GPIO_PORT_NBR_B
*
*                (2) Some architectures multiplex general purpose pins with peripheral functions the 
*                    'fnct' parameter defines the GPIO function. 
*
*                   (a) GPIO function identifier can be found in csp.h:
*
*                           CSP_GPIO_FNCT_00
*                           CSP_GPIO_FNCT_01
*                           CSP_GPIO_FNCT_02
*                           CSP_GPIO_FNCT_03
*
*********************************************************************************************************
*/

CPU_BOOLEAN  CSP_GPIO_Cfg (CSP_DEV_NBR    port_nbr,
                           CSP_GPIO_MSK   pins,
                           CSP_OPT        dir,
                           CSP_OPT_FLAGS  drv_mode,
                           CPU_BOOLEAN    int_en,
                           CSP_OPT        int_pol,
                           CSP_OPT        fnct)
{
    return (DEF_OK);
}


/*
*********************************************************************************************************
*                                          CSP_GPIO_BitClr()
*
* Description : Clear a group of pins for a specific I/O port.
*
* Argument(s) : port_nbr    GPIO port number. (See 'CSP_GPIO_Cfg()' note #1).
*
*               pins        Bit mask specifying which pins to clear.
*
* Return(s)   : None
*
* Caller(s)   : Application.
*
* Note(s)     : None
*********************************************************************************************************
*/

void  CSP_GPIO_BitClr (CSP_DEV_NBR   port_nbr,
                       CSP_GPIO_MSK  pins)
{
	
}


/*
*********************************************************************************************************
*                                         CSP_GPIO_BitSet()
*
* Description : Set a group of pins for a specific I/O port
*
* Argument(s) : port_nbr   GPIO port number. (See 'CSP_GPIO_Cfg()' note #1).
*
*               pins       Bit mask specifying which pins to set.
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_GPIO_BitSet (CSP_DEV_NBR   port_nbr,
                       CSP_GPIO_MSK  pins)
{
	
}


/*
*********************************************************************************************************
*                                         CSP_GPIO_BitToggle()
*
* Description : Toggle a group of pins for a specific I/O port.
*
* Argument(s) : port_nbr    GPIO port number. (See 'CSP_GPIO_Cfg()' note #1).
*
*               pins        Bit mask specifying which pins to Toggle.
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_GPIO_BitToggle (CSP_DEV_NBR   port_nbr,
                          CSP_GPIO_MSK  pins)
{

}   


/*
*********************************************************************************************************
*                                         CSP_GPIO_Rd()
*
* Description : Read the current value of the port.
*
* Argument(s) : port_nbr    GPIO port number. (See 'CSP_GPIO_Cfg()' note #1).
*
* Return(s)   : The current value of the port.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

CSP_GPIO_MSK  CSP_GPIO_Rd (CSP_DEV_NBR  port_nbr)
{
    return ((CSP_GPIO_MSK)0);
}


/*
*********************************************************************************************************
*                                            CSP_GPIO_Wr()
*
* Description : Write a value to a specific port.
*
* Argument(s) : port_nbr    GPIO port number. (See 'CSP_GPIO_Cfg()' note #1).
*
*               val         Value to write.
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_GPIO_Wr (CSP_DEV_NBR   port_nbr,
                   CSP_GPIO_MSK  val)
{

}


/*
*********************************************************************************************************
*                                         CSP_GPIO_IntClr()
*
* Description : Clear pending interrupts for a specific port.
*
* Argument(s) : port_nbr    GPIO port number. (See 'CSP_GPIO_Cfg()' note #1).
*
* Return(s)   : Interrupt status.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

CSP_GPIO_MSK  CSP_GPIO_IntClr (CSP_DEV_NBR  port_nbr)
                   
{
#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    /* $$$$ Insert code to validate arguments.                                    */
#endif
    
    return ((CSP_GPIO_MSK)0);
}


/*
*********************************************************************************************************
*                                        CSP_GPIO_IntStatGet()
*
* Description : Read the port interrupt status state.
*
* Argument(s) : port_nbr    GPIO port number (CSP_GPIO_PORT_NBR_XX).
*
* Return(s)   : port_nbr    GPIO port number. (See 'CSP_GPIO_Cfg()' note #1).
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

CSP_GPIO_MSK  CSP_GPIO_IntStatGet (CSP_DEV_NBR  port_nbr)
{
#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    /* $$$$ Insert code to validate arguments.                                    */
#endif

    return ((CSP_GPIO_MSK)0);
}

