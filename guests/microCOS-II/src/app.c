/*
*********************************************************************************************************
*                                            EXAMPLE CODE
*
*                          (c) Copyright 2009-2015; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*
*               Please feel free to use any application code labeled as 'EXAMPLE CODE' in
*               your application products.  Example code may be used as is, in whole or in
*               part, or may be used as a reference only.
*
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*
*               You can contact us at www.micrium.com.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                          SETUP INSTRUCTIONS
*
*   This demonstration project illustrate a basic uC/OS-II project with simple "hello world" output.
*
*   By default some configuration steps are required to compile this example :
*
*   1. Include the require Micrium software components
*       In the BSP setting dialog in the "overview" section of the left pane the following libraries
*       should be added to the BSP :
*
*           ucos_common
*           ucos_osii
*           ucos_standalone
*
*   2. Kernel tick source - (Not required on the Zynq-7000 PS)
*       If a suitable timer is available in your FPGA design it can be used as the kernel tick source.
*       To do so, in the "ucos" section select a timer for the "kernel_tick_src" configuration option.
*
*   3. STDOUT configuration
*       Output from the print() and UCOS_Print() functions can be redirected to a supported UART. In
*       the "ucos" section the stdout configuration will list the available UARTs.
*
*   Troubleshooting :
*       By default the Xilinx SDK may not have selected the Micrium drivers for the timer and UART.
*       If that is the case they must be manually selected in the drivers configuration section.
*
*       Finally make sure the FPGA is programmed before debugging.
*
*
*   Remember that this example is provided for evaluation purposes only. Commercial development requires
*   a valid license from Micrium.
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/

#include  <stdio.h>
#include  <Source/ucos_ii.h>
#include  <ucos_bsp.h>


/*
*********************************************************************************************************
*                                      LOCAL FUNCTION PROTOTYPES
*********************************************************************************************************
*/

void  MainTask (void *p_arg);


/*
*********************************************************************************************************
*                                               main()
*
* Description : Entry point for C code.
*
*********************************************************************************************************
*/

int main()
{

    UCOSStartup(MainTask);

    return 0;
}


/*
*********************************************************************************************************
*                                             MainTask()
*
* Description : Startup task example code.
*
* Returns     : none.
*
* Created by  : main().
*********************************************************************************************************
*/

void  MainTask (void *p_arg)
{

    UCOS_Print ("Hello world from the main task\r\n");

    while (DEF_TRUE) {
        OSTimeDlyHMSM(0, 0, 10, 0);
        UCOS_Print("Periodic output every 10 seconds from the main task\r\n");
    }

}

