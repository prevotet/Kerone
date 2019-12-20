/*
*********************************************************************************************************
*
*                                    MICRIUM BOARD SUPPORT PACKAGE
*
*                        (c) Copyright 2014-2015; Micrium, Inc.; Weston, FL
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
*                                         uC/TCPIP INIT CODE
*
* Filename      : ucos_http-c_init.c
* Version       : V1.41
* Programmer(s) : JBL
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/


#include <app_cfg.h>
#include <cpu.h>
#include <ucos_bsp.h>
#include <ucos_int.h>
#include <xparameters.h>
#include <KAL/kal.h>

#if (APP_TCPIP_ENABLED == DEF_ENABLED)
#include  <IP/IPv4/net_ipv4.h>
#include  <Source/net_type.h>
#include  <Source/net_ip.h>


#if (APP_HTTPC_ENABLED == DEF_ENABLED)
#include  <Client/Source/http-c.h>
#endif


#if (APP_HTTPC_ENABLED == DEF_ENABLED)
CPU_BOOLEAN UCOS_HTTPc_Init (void)
{
    HTTPc_ERR    err_httpc;


#if (UCOS_START_DEBUG_TRACE == DEF_ENABLED)
    UCOS_Print("UCOS - Initializing uC/HTTPc.\r\n");
#endif

#if (HTTPc_CFG_MODE_ASYNC_TASK_EN == DEF_ENABLED)
    HTTPc_Init(&HTTPc_Cfg, &HTTPc_TaskCfg, DEF_NULL, &err_httpc);
#else
    HTTPc_Init(&HTTPc_Cfg, DEF_NULL, DEF_NULL, &err_httpc);
#endif
    if (err_httpc != HTTPc_ERR_NONE) {
        UCOS_Printf("UCOS - Error initializing uC/HTTPc. Error code %d\r\n", err_httpc);
        return (DEF_FAIL);
    }

    return (DEF_OK);
}

#endif /* #if (APP_HTTPC_ENABLED == DEF_ENABLED) */
#endif /* #if (APP_TCPIP_ENABLED == DEF_ENABLED) */
