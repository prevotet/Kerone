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
*                                         INTERRUPT MANAGEMENT
*
*                                           Xilinx Zynq-7000
* 
* Filename      : csp_int.c
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

#define    CSP_INT_MODULE
#include   <csp.h>
#include   "../../../../App/port/guest_os_fctns.h"


/*
*********************************************************************************************************
*                                          DEFAULT CONFIGURATION
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            LOCAL DEFINES
*********************************************************************************************************
*/

                                                                /* Interrupt Controller CPU (ICC) Registers             */
#define  CSP_INT_ADDR_CPU_INTF_REG_BASE    (CPU_ADDR   )0xF8F00100

#define  CSP_INT_REG_ICCICR              (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0x00))
#define  CSP_INT_REG_ICCPMR              (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0x04))
#define  CSP_INT_REG_ICCBPR              (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0x08))
#define  CSP_INT_REG_ICCIAR              (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0x0C))
#define  CSP_INT_REG_ICCEOIR             (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0x10))
#define  CSP_INT_REG_ICCRPR              (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0x14))
#define  CSP_INT_REG_ICCHPIR             (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0x18))
#define  CSP_INT_REG_ICCABPR             (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0x1C))
#define  CSP_INT_REG_ICCIIDR             (*(CPU_REG32 *)(CSP_INT_ADDR_CPU_INTF_REG_BASE + 0xFC))


                                                                /* Interrupt Controller Distributor (ICD) Registers     */
#define  CSP_INT_ADDR_GIC_REG_BASE         (CPU_ADDR   )0xF8F01000

#define  CSP_INT_REG_ICDDCR              (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x000))
#define  CSP_INT_REG_ICDICTR             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x004))
#define  CSP_INT_REG_ICDIIDR             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x008))
#define  CSP_INT_REG_ICDISR              (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x080))
#define  CSP_INT_REG_ICDISR1             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x084))
#define  CSP_INT_REG_ICDISR2             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x088))
#define  CSP_INT_REG_ICDISER             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x100))
#define  CSP_INT_REG_ICDISER1            (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x104))
#define  CSP_INT_REG_ICDISER2            (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x108))
#define  CSP_INT_REG_ICDICER             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x180))
#define  CSP_INT_REG_ICDICER1            (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x184))
#define  CSP_INT_REG_ICDICER2            (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x188))
#define  CSP_INT_REG_ICDISPR             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x200))
#define  CSP_INT_REG_ICDISPR1            (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x204))
#define  CSP_INT_REG_ICDISPR2            (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x208))
#define  CSP_INT_REG_ICDICPR             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x280))
#define  CSP_INT_REG_ICDICPR1            (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x284))
#define  CSP_INT_REG_ICDICPR2            (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x288))
#define  CSP_INT_REG_ICDABR              (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x300))
#define  CSP_INT_REG_ICDABR1             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x304))
#define  CSP_INT_REG_ICDABR2             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x308))
#define  CSP_INT_REG_ICDIPR              (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x400))
#define  CSP_INT_REG_ICDIPTR             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0x800))
#define  CSP_INT_REG_ICDICFR             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0xC00))
#define  CSP_INT_REG_ICDSGIR             (*(CPU_REG32 *)(CSP_INT_ADDR_GIC_REG_BASE + 0xF00))


/*
*********************************************************************************************************
*                                           LOCAL CONSTANTS
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                           LOCAL DATA TYPES
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
*                                      INTERRUPT VECTOR TABLE
*
* Note(s) : (1) 'CSP_MainVectTbl[]' table is used by RTOS to dispath ISRs and measure interrupt 
*                execution time.
*********************************************************************************************************
*/

static  CSP_INT_VECT  CSP_MainVectTbl[CSP_INT_SRC_NBR_MAX]; 


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
*                                            CSP_IntClr()
*
* Description : Clear an interrupt source on a specific interrupt controller.
*
* Argument(s) : int_ctrl   Interrupt controller number. (see note #1).
*
*               src_nbr    Interrupt source number. (see note #2). 
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : (1) Interrupt controllers numbers identifiers can be found in 'csp_grp.h' 
* 
*                       CSP_INT_CTRL_NBR_XX'  where 'XX" is the name of the interrupt controller.
*
*               (2) Interrupt source identifiers can be found in 'csp_grp.h' as CSP_INT
*
*                       CSP_INT_SRC_NBR_XX      where XX is the peripheral or interrupt source name.
*                                               Main interrupt controller only.
* 
*                       CSP_INT_XX_SRC_NBR_YY   where xx is the name of the interrupt controller or shared 
*                                               handler and YY is the peripheral or source name.
*********************************************************************************************************
*/

void  CSP_IntClr (CSP_DEV_NBR  int_ctrl,
                  CSP_DEV_NBR  src_nbr)
{
	guest_CSP_IntClr(int_ctrl, src_nbr);
	//CSP_INT_REG_ICCEOIR = src_nbr;                              /* Clear interrupt by setting the End-Of-Interrupt reg. */
}


/*
*********************************************************************************************************
*                                          CSP_IntDis()
*
* Description : Disable an interrupt source on a specific interrupt controller.
*
* Argument(s) : int_ctrl   Interrupt controller number. (see 'CSP_IntClr()' note #1).
*
*               src_nbr    Interrupt source number. (see 'CSP_IntClr()' note #2).
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_IntDis (CSP_DEV_NBR  int_ctrl,
                  CSP_DEV_NBR  src_nbr)
{   
    CPU_INT32U  reg;  
    
    reg  =  (CPU_INT32U)&CSP_INT_REG_ICDICER;
	reg += ((src_nbr / 32u) * 4u);

    (*(CPU_REG32 *)reg) = (1u << (src_nbr & 0x1F));
}



/*
*********************************************************************************************************
*                                          CSP_IntDisAll()
*
* Description : Disable all interrupts on a specific interrupt controller.
*
* Argument(s) : int_ctrl   Interrupt controller number. (see 'CSP_IntClr()' note #1).
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_IntDisAll (CSP_DEV_NBR  int_ctrl)
{
    DEF_BIT_CLR(CSP_INT_REG_ICDDCR, DEF_BIT_00);
}


/*
*********************************************************************************************************
*                                          CSP_IntEn()
*
* Description : Enable an interrupt source on a specific interrupt controller.
*
* Argument(s) : int_ctrl   Interrupt controller number. (see 'CSP_IntClr()' note #1).
*
*               src_nbr    Interrupt source number. (see 'CSP_IntClr()' note #2).
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_IntEn (CSP_DEV_NBR  int_ctrl,
                 CSP_DEV_NBR  src_nbr)
{
    CPU_INT32U  reg;  
    //int var1;
    //int var2;
    //int var3;
    
    reg  =  (CPU_INT32U)&CSP_INT_REG_ICDISER;
	reg += ((src_nbr / 32u) * 4u);

	//var1 = reg;
	//var2 = (1u << (src_nbr & 0x1F));

    (*(CPU_REG32 *)reg) = (1u << (src_nbr & 0x1F));
    //var3 =  (*(CPU_REG32 *)reg);
}


/*
*********************************************************************************************************
*                                          CSP_IntInit()
*
* Description : Initialize all interrupt controllers and shared handlers.
*                   (1) Disable all interrupts.
*                   (2) Clear all pending interrupts.
*                   (3) Initialize all vector interrupt tables.
*                   (4) Install all shared interrupt handlers. 
*
* Argument(s) : None.
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_IntInit (void)
{
//    CPU_INT32U     reg;
//    CPU_INT32U     core_msk;
//	  CPU_INT08U     i;
    CPU_INT16U     src_nbr;
    CSP_INT_VECT  *p_int_vect;
    CPU_SR_ALLOC();
	
	
/*    DEF_BIT_CLR(CSP_INT_REG_ICDDCR, DEF_BIT_00);                /* Disable the Global Interrupt Controller.             */
	
/*	for (i = 0u; i < (CSP_INT_SRC_NBR_MAX / 32u); i++) {        /* Disable all the GIC irq sources.                     */
/*	    reg  = (CPU_INT32U)&CSP_INT_REG_ICDICER;
 	    reg += (4u + (i * 4u));

        (*(CPU_REG32 *)reg) = 0xFFFFFFFF;
	  
 	    reg  = (CPU_INT32U)&CSP_INT_REG_ICDICPR;
 	    reg +=  i * 4u;

        (*(CPU_REG32 *)reg) = 0xFFFFFFFF;
	}
		 
	core_msk = (DEF_BIT_00 | DEF_BIT_08 | DEF_BIT_16); 

    for (i = 0u; i < ((CSP_INT_SRC_NBR_MAX - 32u) / 4u); i++) {
	  reg  = (CPU_INT32U)&CSP_INT_REG_ICDIPTR;
 	    reg += (((32u / 4u) + i) * 4u);

        (*(CPU_REG32 *)reg) = core_msk;	
	}
*/
                                                                /* Initialize the vector table.                         */
    for (src_nbr = 0u; src_nbr < CSP_INT_SRC_NBR_MAX; src_nbr++) {
        p_int_vect = &CSP_MainVectTbl[src_nbr];

        CPU_CRITICAL_ENTER();
        CSP_IntVectClr(p_int_vect);                             /* Initialize main vector table entry.                  */
        CPU_CRITICAL_EXIT();
    }
		 
/*    DEF_BIT_SET(CSP_INT_REG_ICCPMR, DEF_BIT_03);                /* Set priority mask.                                   */
/*    DEF_BIT_SET(CSP_INT_REG_ICCICR, DEF_BIT_00);                /* Enable CPU interface.                                */
/*	  DEF_BIT_SET(CSP_INT_REG_ICDDCR, DEF_BIT_00);                /* Enable the Global Interrupt Controller.              */
}
		 

/*
*********************************************************************************************************
*                                          CSP_IntSrcCfg()
*
* Description : Configure an interrupt source.
*
* Argument(s) : int_ctrl   Interrupt controller number. (see 'CSP_IntClr()' note #1).
*
*               src_nbr    Interrupt source number. (see 'CSP_IntClr()' note #2).
*
*               src_prio   Interrupt source priority.
*
*               src_pol    Interrupt source polarity:
*                              CSP_INT_POL_LEVEL_HIGH           Interrupt is activated on a high level.
*                              CSP_INT_POL_LEVEL_LOW            Interrupt is activated on a low level.
* 
*                              CSP_INT_POL_EDGE_RISING          Interrupt is activated on the rising edge.
*                              CSP_INT_POL_EDGE_FALLING         Interrupt is activated on the falling edge.
*                              CSP_INT_POL_EDGE_BOTH            Interrupt is activated on both edges.       
*
*
* Return(s)   : DEF_OK,    if the interrupt source was configured
*               DEF_FAIL,  otherwise.
*
* Caller(s)   : Application.
*
* Note(s)     : (1) Interrupt source priority is determined by the interrupt controller implementation.
*                   The maximum and minimum values are defined in the family definition file 'csp_grp.h'
*********************************************************************************************************
*/

CPU_BOOLEAN  CSP_IntSrcCfg (CSP_DEV_NBR  int_ctrl,
                            CSP_DEV_NBR  src_nbr,
                            CSP_OPT      src_prio,
                            CSP_OPT      src_pol)

{
    CPU_INT32U  reg;  


#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    if (int_ctrl != CSP_INT_CTRL_NBR_MAIN) {
        return (DEF_FAIL);
    }
    
    if (src_nbr > CSP_INT_SRC_NBR_MAX - 1u) {
        return (DEF_FAIL);
    }

    if ((src_prio > CSP_INT_SRC_PRIO_LOWEST) | 
		(src_prio < CSP_INT_SRC_PRIO_HIGHEST)) {
        return (DEF_FAIL);
    }
#endif
    
    reg  =  (CPU_INT32U)&CSP_INT_REG_ICDIPR;                    /* Configure interrupt priority.                     */
	reg +=  (src_nbr / 4u);

	(*(CPU_REG32 *)reg) = (src_prio << ((src_nbr % 4u) * 8u));
	 
    reg  =  (CPU_INT32U)&CSP_INT_REG_ICDICFR;
    reg +=  (src_nbr / 16u);
	
	if (src_pol == CSP_INT_POL_LEVEL_HIGH || src_pol == CSP_INT_POL_LEVEL_LOW) { 
	    DEF_BIT_CLR((*(CPU_REG32 *)reg), (1u << (((src_nbr % 16u) * 2u) + 1u)));
	} else {
	    DEF_BIT_SET((*(CPU_REG32 *)reg), (1u << (((src_nbr % 16u) * 2u) + 1u))); 
	}
		 
    return (DEF_OK);
}


/*
*********************************************************************************************************
*                                          CSP_IntVectReg()
*
* Description : Register an interrupt service routine handler for a specific interrupt controller.
*
* Argument(s) : int_ctrl   Interrupt controller number. (see 'CSP_IntClr()' note #1).
*
*               src_nbr    Interrupt source number. (see 'CSP_IntClr()' note #2).
*
*               isr_fnct    Pointer to the interrupt service routine (ISR).
*
*               p_arg       Pointer to the argument of the interrupt service routine (ISR).
*
* Return(s)   : DEF_OK,    If the vector was registered successfully.
*               DEF_FAIL,  otherwise.
*               
* Caller(s)   : Application.
*
* Note(s)     : none.
*********************************************************************************************************
*/

CPU_BOOLEAN  CSP_IntVectReg (CSP_DEV_NBR    int_ctrl,
                             CSP_DEV_NBR    src_nbr,
                             CPU_FNCT_PTR   isr_fnct,
                             void          *p_arg)
{
    CSP_INT_VECT  *p_int_vect;
    CPU_SR_ALLOC();
	
	
#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    if (int_ctrl != CSP_INT_CTRL_NBR_MAIN) {
        return (DEF_FAIL);
    }
    
    if (src_nbr > CSP_INT_SRC_NBR_MAX - 1u) {
        return (DEF_FAIL);
    }
#endif

    p_int_vect = (CSP_INT_VECT  *)&CSP_MainVectTbl[src_nbr];

    CPU_CRITICAL_ENTER();

    CSP_IntVectSet((CSP_INT_VECT *)p_int_vect,
                   (CPU_FNCT_PTR  )isr_fnct,
                   (void *        )p_arg);

    CPU_CRITICAL_EXIT();
    
    return (DEF_OK);
}


/*
*********************************************************************************************************
*                                          CSP_IntVectUnreg()
*
* Description : Un-register an interrupt vector.
*
* Argument(s) : int_ctrl   Interrupt controller number. (see 'CSP_IntClr()' note #1).
*
*               src_nbr    Interrupt source number. (see 'CSP_IntClr()' note #2).
*
* Return(s)   : DEF_OK,     If the vector was unregistered successfully.
*               DEF_FAIL,   otherwise.
*
* Caller(s)   : Application.
*
* Note(s)     : none.
*********************************************************************************************************
*/

CPU_BOOLEAN  CSP_IntVectUnreg (CSP_DEV_NBR  int_ctrl,
                               CSP_DEV_NBR  src_nbr)
{
    CSP_INT_VECT  *p_int_vect;
    CPU_SR_ALLOC();

#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    if (int_ctrl != CSP_INT_CTRL_NBR_MAIN) {
        return (DEF_FAIL);
    }

    if (src_nbr > CSP_INT_SRC_NBR_MAX - 1u) {
        return (DEF_FAIL);
    }
#endif
    
    p_int_vect = (CSP_INT_VECT  *)&CSP_MainVectTbl[src_nbr];

    CPU_CRITICAL_ENTER();

    CSP_IntVectClr(p_int_vect);

    CPU_CRITICAL_EXIT();

    return (DEF_OK);
}


/*
*********************************************************************************************************
*                                       CSP_IntHandlerSrc()
*
* Description : Global interrupt handler.
*
* Argument(s) : src_nbr      Interrupt source number.
*
* Return(s)   : none
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_IntHandlerSrc (CSP_DEV_NBR  src_nbr)
{
    CSP_INT_VECT  int_vect;


#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    if (src_nbr > CSP_INT_SRC_NBR_MAX - 1u) {
        return;
    }
#endif
	
    int_vect = CSP_MainVectTbl[src_nbr];

	CSP_IntVectDeref(&int_vect);                  		        /* Call Dereferencing function                          */
	CSP_IntClr(CSP_INT_CTRL_NBR_MAIN, src_nbr);   		        /* Clear interrupt                                      */
}

/**********************************************************************************************************
 *   Used by guest OS to handle masked IRQ during CPU-CRITICAL Time
 *********************************************************************************************************
 */
void  Guest_OS_CSP_IntHandlerSrc (CSP_DEV_NBR  src_nbr)
{
    CSP_INT_VECT  int_vect;


#if (CSP_CFG_ARG_CHK_EN == DEF_ENABLED)
    if (src_nbr > CSP_INT_SRC_NBR_MAX - 1u) {
        return;
    }
#endif

    int_vect = CSP_MainVectTbl[src_nbr];

	CSP_IntVectDeref(&int_vect);                  		        /* Call Dereferencing function                          */
	//CSP_IntClr(CSP_INT_CTRL_NBR_MAIN, src_nbr);   		        /* Clear interrupt                                      */
}

/*
*********************************************************************************************************
*                                         CSP_IntHandler()
*
* Description : Global interrupt handler.
*
* Argument(s) : None.
*
* Return(s)   : none
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  CSP_IntHandler  (void)
{

}
