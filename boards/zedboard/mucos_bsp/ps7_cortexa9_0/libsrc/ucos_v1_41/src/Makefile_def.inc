UCOS_ARCH = v7a
override ARCHIVER = arm-xilinx-eabi-gcc-ar
UCOS_SRC_BASE = ./
UCOS_SRC_LOC = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source
UCOS_LIB_LOC = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_libraries
UCOS_DIR_NAME = uCOS-II
UCOS_OS = osii

UCOS_CPU_SRC_BASE = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source/uC-CPU
UCOS_LIB_SRC_BASE = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source/uC-LIB
UCOS_COMMON_SRC_BASE = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source/uC-Common
UCOS_CLK_SRC_BASE = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source/uC-Clk
UCOS_CRC_SRC_BASE = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source/uC-CRC
UCOS_SHELL_SRC_BASE = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source/uC-Shell
UCOS_OSII_SRC_BASE = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source/uCOS-II
UCOS_OSIII_SRC_BASE = D:/users/work/Xilinx/Vivado/2017.1/Zedboard/Micrium_XSDK_Repository_ucos_v1_41/ucos_v1_41/micrium_source/uCOS-III
UCOS_TCPIP_SRC_BASE = 
UCOS_TCPIP_EXP_SRC_BASE = 
UCOS_FS_SRC_BASE = 
UCOS_USBD_SRC_BASE = 
UCOS_USBH_SRC_BASE = 
UCOS_DHCPC_SRC_BASE = 
UCOS_DNSC_SRC_BASE = 
UCOS_FTPS_SRC_BASE = 
UCOS_HTTPC_SRC_BASE = 
UCOS_HTTPS_SRC_BASE = 
UCOS_MQTTC_SRC_BASE = 
UCOS_IPERF_SRC_BASE = 
UCOS_TELNETS_SRC_BASE = 
UCOS_CAN_SRC_BASE = 
UCOS_OPENAMP_SRC_BASE = 

#Trick to ensure the GNUWin binary of mkdir is called on Windows
MKDIR = $(join $(dir $(shell which touch)), "mkdir")
