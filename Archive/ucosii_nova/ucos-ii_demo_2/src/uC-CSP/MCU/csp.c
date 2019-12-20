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
*                                      uC/CSP COMMON DRIVER API.
*
* Filename      : csp.c
* Version       : V1.00
* Programmer(s) : FT
*********************************************************************************************************
* Note(s)       : 
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/


#define  CSP_MODULE
#define  CSP_GRP_MODULE
#define  CSP_DEV_MODULE

#include <csp.h>


/*
*********************************************************************************************************
*                                             LOCAL DEFINES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            LOCAL VARIABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                        CSP_IntVectClr()
*
* Description : Clear the interrupt vector structure.
*
* Argument(s) : p_vect      Pointer to a interrupt vector.
*
* Return(s)   : none
*
* Caller(s)   : CSP_IntInit()
*
* Note(s)     : none.
*********************************************************************************************************
*/

void  CSP_IntVectClr (CSP_INT_VECT  *p_vect)
{
    p_vect->FnctPtr = (CPU_FNCT_PTR )0;

#if (CSP_CFG_INT_ISR_ARG_EN == DEF_ENABLED)
    p_vect->ArgPtr  = (void *)0;
#endif                

#if (CSP_CFG_INT_ISR_EXEC_MEAS_EN == DEF_ENABLED) && \
    (CPU_CFG_TS_EN                == DEF_ENABLED)
    p_vect->TimeMax = (CPU_TS )0;                               /* Intialize Interrupt excecution time.                 */
    p_vect->TimeCur = (CPU_TS )0;         
#endif        
}



/*
*********************************************************************************************************
*                                        CSP_IntVectClr()
*
* Description : Clear the interrupt vector structure.
*
* Argument(s) : p_vect      Pointer to a interrupt vector.
*
* Return(s)   : none
*
* Caller(s)   : CSP_IntInit()
*
* Note(s)     : none.
*********************************************************************************************************
*/

void  CSP_IntVectSet (CSP_INT_VECT  *p_vect,
                      CPU_FNCT_PTR   isr_fnct,
                      void          *p_arg)
{
    p_vect->FnctPtr = isr_fnct;
#if (CSP_CFG_INT_ISR_ARG_EN == DEF_ENABLED)
    p_vect->ArgPtr  = p_arg;
#endif                

#if (CSP_CFG_INT_ISR_EXEC_MEAS_EN == DEF_ENABLED) && \
    (CPU_CFG_TS_EN                == DEF_ENABLED)
    p_vect->TimeMax = (CPU_TS )0;                               /* Intialize Interrupt excecution time.                 */
    p_vect->TimeCur = (CPU_TS )0;         
#endif        
}


/*
*********************************************************************************************************
*                                        CSP_IntVectDeref()
*
* Description : Dereference an Interrupt vector.
*
* Argument(s) : p_vect      Pointer to a interrupt vector.
*
* Return(s)   : none
*
* Caller(s)   : CSP_IntHandlerSrc()
*               CSP_IntHandler()
*
* Note(s)     : none.
*********************************************************************************************************
*/

void  CSP_IntVectDeref (CSP_INT_VECT  *p_vect)
{
#if (CSP_CFG_INT_ISR_ARG_EN == DEF_ENABLED)
    void          *p_int_arg;
#endif    
    CPU_FNCT_PTR   int_isr_fnct;    
#if (CSP_CFG_INT_ISR_EXEC_MEAS_EN == DEF_ENABLED) && \
    (CPU_CFG_TS_EN               == DEF_ENABLED)
    CPU_TS         ts;
    CPU_SR_ALLOC();    
#endif       


    int_isr_fnct =  p_vect->FnctPtr;
#if (CSP_CFG_INT_ISR_ARG_EN == DEF_ENABLED)
    p_int_arg    =  p_vect->ArgPtr;
#endif    
      
   if (int_isr_fnct != (CPU_FNCT_PTR)0) {
#if (CSP_CFG_INT_ISR_EXEC_MEAS_EN == DEF_ENABLED) && \
    (CPU_CFG_TS_EN                == DEF_ENABLED)
        ts = CPU_TS_Get32();                                    /* Get current time stamp.                              */                 
#endif

#if (CSP_CFG_INT_NESTING_EN == DEF_ENABLED)
        CPU_IntEn();    
#endif

#if (CSP_CFG_INT_ISR_ARG_EN == DEF_ENABLED)                
        (*int_isr_fnct)(p_int_arg);                             /* Call interrupt handler                               */
#else
        (*int_isr_fnct)((void *)0);                             /* Call interrupt handler (default argument)            */
#endif

#if (CSP_CFG_INT_NESTING_EN == DEF_ENABLED)
        CPU_IntDis();    
#endif

#if (CSP_CFG_INT_ISR_EXEC_MEAS_EN == DEF_ENABLED) && \
    (CPU_CFG_TS_EN                == DEF_ENABLED)
        ts = CPU_TS_Get32() - ts;                               /* Compute delta time between start and end.            */
                                                                /* Detect peak value                                    */
        CPU_CRITICAL_ENTER();

        if (p_vect->TimeMax < ts) {
            p_vect->TimeMax = ts;
        }
        
        p_vect->TimeCur = ts;                 
        
        CPU_CRITICAL_EXIT();        
#endif        
   }
}
   

