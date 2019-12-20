
#include "include/xil_printf.h"

/*
*********************************************************************************************************
*                                            LOCAL DEFINES
*********************************************************************************************************
*/
#define  SYS_CLK_FREQ 		333333333
                                                                /* Private Timer Base.                                  */
#define  CSP_INT_ADDR_PVT_TMR                                 (unsigned long  )0xF8F00600

#define  CSP_INT_REG_PVT_TMR_LOAD                           (*(unsigned long *)(CSP_INT_ADDR_PVT_TMR + 0x00))
#define  CSP_INT_REG_PVT_TMR_COUNTER                        (*(unsigned long *)(CSP_INT_ADDR_PVT_TMR + 0x04))
#define  CSP_INT_REG_PVT_TMR_CONTROL                        (*(unsigned long *)(CSP_INT_ADDR_PVT_TMR + 0x08))
#define  CSP_INT_REG_PVT_TMR_INT_STATUS                     (*(unsigned long *)(CSP_INT_ADDR_PVT_TMR + 0x0C))


/*
*********************************************************************************************************
*                                            CSP_TmrCfg()
*
* Description : Configure periodic or free running timer.
*
* Argument(s) : tmr_nbr   Timer number identifier (see note #1).
*
*               freq      Periodic timer frequency. (see note #2)
*
* Return(s)   : DEF_OK,   If the timer was configured correctly,
*               DEF_FAIL, otherwise.
*
* Caller(s)   : Application.
*
* Note(s)     : (1) Timer number identifier are defined in 'csp.h'
*
*                       CSP_TMR_NBR_00
*                       CSP_TMR_NBR_01
*                              .
*                              .
*                              .
*                       CSP_TMR_NBR_xx
*
*                        (a) 'CSP_TMR_NBR_SYS_TICK' is used for microcontrollers with system tick timers.
*
*               (2) If 'freq' == 0 Timer is configured as free-running timer.
*                   If 'freq' > 0  Timer will be configured to generate a interrupt event every
*                   (1/freq) seconds.
*
*               (3) If the timer is configured in periodic mode, the interrupt handler needs
*                   to be installed first by the application in the interrupt controller.
*
*               (4) TMR 0 corresponds to the private systick timer. TMR 1 corresponsd to the shared timer.
*
*               (5) (((PRESCALER_value + 1) * (Load_value + 1)) / PERIPHCLK) = (1 / freq)
*********************************************************************************************************
*/

void  Private_TmrCfg (unsigned long freq)
{
	unsigned long  load_val;

	if (freq == 0) {          /* See Note #4.                                         */
	    print("Virtual timer is set to free-running! \n\r");
		return;
	}

    load_val = (SYS_CLK_FREQ / (freq)) - 1u;       /* See Note #5.                                         */

	CSP_INT_REG_PVT_TMR_LOAD       	= 0;        /* Disable the timer.                                   */
	CSP_INT_REG_PVT_TMR_INT_STATUS 	= 0;        /* Clear any pending interrupts.                        */
	CSP_INT_REG_PVT_TMR_LOAD    	= load_val; /* Set the value to reload the counter register with.   */
    CSP_INT_REG_PVT_TMR_CONTROL 	= 6;        /* Enable Timer IRQ, and Auto Reload.                   */

}


/*
*********************************************************************************************************
*                                     CSP_TmrStart()
*
* Description : Start a timer.
*
* Argument(s) : tmr_nbr    tmr_nbr    Timer number identifier (see 'CSP_TmrCfg' note #1).
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  Private_TmrStart ()
{
  CSP_INT_REG_PVT_TMR_CONTROL = CSP_INT_REG_PVT_TMR_CONTROL | 1;
}

/*
*********************************************************************************************************
*                                            CSP_TmrOutCmpCfg()
*
* Description : Configure a timer for compare mode.
*
* Argument(s) : tmr_nbr    Timer number identifier (see 'CSP_TmrCfg' note #1).
*
*               pin_nbr    Pin number.
*
*               pin_action  Output compare pin action
*
*                              CSP_TMR_OPT_PIN_OUT_NONE      Do nothing.
*                              CSP_TMR_OPT_PIN_OUT_CLR       Clear  the correspoding  external pin for output compare.
*                              CSP_TMR_OPT_PIN_OUT_SET       Set    the correspondin  external pin for output compare.
*                              CSP_TMR_OPT_PIN_OUT_TOGGLE    Toggle the corresponding external pin for output compare.
*
* Return(s)   : DEF_OK,   If the timer was configured correctly in compare mode,
*               DEF_FAIL, otherwise.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

unsigned  char  Private_TmrOutCmpCfg ()
{
    return 0;
}


/*
*********************************************************************************************************
*                                           CSP_TmrIntClr()
*
* Description : Clear a periodic timer interrupt.
*
* Argument(s) : tmr_nbr    Timer number identifier (see 'CSP_TmrCfg' note #1).
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  Private_TmrIntClr ()
{
	CSP_INT_REG_PVT_TMR_INT_STATUS = CSP_INT_REG_PVT_TMR_INT_STATUS | 1;   /* Clear the event flag by setting it to 1.             */
}


/*
*********************************************************************************************************
*                                            CSP_TmrRst()
*
* Description : Resets a timer.
*
* Argument(s) : tmr_nbr    tmr_nbr    Timer number identifier (see 'CSP_TmrCfg' note #1).
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  Private_TmrRst ()
{
	return;
}


/*
*********************************************************************************************************
*                                             CSP_TmrRd()
*
* Description : Read the current value of a timer.
*
* Argument(s) : tmr_nbr    tmr_nbr    Timer number identifier (see 'CSP_TmrCfg' note #1).
*
* Return(s)   : The current value of the timer.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

unsigned long Private_TmrRd  ()
{
    return CSP_INT_REG_PVT_TMR_COUNTER;
}


/*
*********************************************************************************************************
*                                            CSP_TmrStop()
*
* Description : Stop a timer.
*
* Argument(s) : tmr_nbr    tmr_nbr    Timer number identifier (see 'CSP_TmrCfg' note #1).
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  Private_TmrStop  ()
{
	return;
}



/*
*********************************************************************************************************
*                                             CSP_TmrWr()
*
* Description : Write a value to a timer.
*
* Argument(s) : tmr_nbr    tmr_nbr    Timer number identifier (see 'CSP_TmrCfg' note #1).
*
*               tmr_val    value to write.
*
* Return(s)   : None.
*
* Caller(s)   : Application.
*
* Note(s)     : None.
*********************************************************************************************************
*/

void  Private_TmrWr  (unsigned long tmr_val)
{
	CSP_INT_REG_PVT_TMR_COUNTER = tmr_val;
}


