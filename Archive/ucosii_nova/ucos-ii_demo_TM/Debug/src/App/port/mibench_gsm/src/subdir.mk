################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/App/port/mibench_gsm/src/add.c \
../src/App/port/mibench_gsm/src/code.c \
../src/App/port/mibench_gsm/src/debug.c \
../src/App/port/mibench_gsm/src/decode.c \
../src/App/port/mibench_gsm/src/gsm_create.c \
../src/App/port/mibench_gsm/src/gsm_decode.c \
../src/App/port/mibench_gsm/src/gsm_destroy.c \
../src/App/port/mibench_gsm/src/gsm_encode.c \
../src/App/port/mibench_gsm/src/gsm_explode.c \
../src/App/port/mibench_gsm/src/gsm_implode.c \
../src/App/port/mibench_gsm/src/gsm_option.c \
../src/App/port/mibench_gsm/src/gsm_print.c \
../src/App/port/mibench_gsm/src/long_term.c \
../src/App/port/mibench_gsm/src/lpc.c \
../src/App/port/mibench_gsm/src/preprocess.c \
../src/App/port/mibench_gsm/src/rpe.c \
../src/App/port/mibench_gsm/src/short_term.c \
../src/App/port/mibench_gsm/src/table.c \
../src/App/port/mibench_gsm/src/toast.c \
../src/App/port/mibench_gsm/src/toast_alaw.c \
../src/App/port/mibench_gsm/src/toast_audio.c \
../src/App/port/mibench_gsm/src/toast_lin.c \
../src/App/port/mibench_gsm/src/toast_ulaw.c 

OBJS += \
./src/App/port/mibench_gsm/src/add.o \
./src/App/port/mibench_gsm/src/code.o \
./src/App/port/mibench_gsm/src/debug.o \
./src/App/port/mibench_gsm/src/decode.o \
./src/App/port/mibench_gsm/src/gsm_create.o \
./src/App/port/mibench_gsm/src/gsm_decode.o \
./src/App/port/mibench_gsm/src/gsm_destroy.o \
./src/App/port/mibench_gsm/src/gsm_encode.o \
./src/App/port/mibench_gsm/src/gsm_explode.o \
./src/App/port/mibench_gsm/src/gsm_implode.o \
./src/App/port/mibench_gsm/src/gsm_option.o \
./src/App/port/mibench_gsm/src/gsm_print.o \
./src/App/port/mibench_gsm/src/long_term.o \
./src/App/port/mibench_gsm/src/lpc.o \
./src/App/port/mibench_gsm/src/preprocess.o \
./src/App/port/mibench_gsm/src/rpe.o \
./src/App/port/mibench_gsm/src/short_term.o \
./src/App/port/mibench_gsm/src/table.o \
./src/App/port/mibench_gsm/src/toast.o \
./src/App/port/mibench_gsm/src/toast_alaw.o \
./src/App/port/mibench_gsm/src/toast_audio.o \
./src/App/port/mibench_gsm/src/toast_lin.o \
./src/App/port/mibench_gsm/src/toast_ulaw.o 

C_DEPS += \
./src/App/port/mibench_gsm/src/add.d \
./src/App/port/mibench_gsm/src/code.d \
./src/App/port/mibench_gsm/src/debug.d \
./src/App/port/mibench_gsm/src/decode.d \
./src/App/port/mibench_gsm/src/gsm_create.d \
./src/App/port/mibench_gsm/src/gsm_decode.d \
./src/App/port/mibench_gsm/src/gsm_destroy.d \
./src/App/port/mibench_gsm/src/gsm_encode.d \
./src/App/port/mibench_gsm/src/gsm_explode.d \
./src/App/port/mibench_gsm/src/gsm_implode.d \
./src/App/port/mibench_gsm/src/gsm_option.d \
./src/App/port/mibench_gsm/src/gsm_print.d \
./src/App/port/mibench_gsm/src/long_term.d \
./src/App/port/mibench_gsm/src/lpc.d \
./src/App/port/mibench_gsm/src/preprocess.d \
./src/App/port/mibench_gsm/src/rpe.d \
./src/App/port/mibench_gsm/src/short_term.d \
./src/App/port/mibench_gsm/src/table.d \
./src/App/port/mibench_gsm/src/toast.d \
./src/App/port/mibench_gsm/src/toast_alaw.d \
./src/App/port/mibench_gsm/src/toast_audio.d \
./src/App/port/mibench_gsm/src/toast_lin.d \
./src/App/port/mibench_gsm/src/toast_ulaw.d 


# Each subdirectory must supply rules for building sources it contributes
src/App/port/mibench_gsm/src/%.o: ../src/App/port/mibench_gsm/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -DNDEBUG -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -I"C:\Xilinx\XIATAN\Xilinx\proj\tutoral\myproj\ucosii_nova\ucos-ii_demo_TM\src\App\port" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


