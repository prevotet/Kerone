################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/uCOS-II/Source/os_core.c \
../src/uCOS-II/Source/os_dbg_r.c \
../src/uCOS-II/Source/os_flag.c \
../src/uCOS-II/Source/os_mbox.c \
../src/uCOS-II/Source/os_mem.c \
../src/uCOS-II/Source/os_mutex.c \
../src/uCOS-II/Source/os_q.c \
../src/uCOS-II/Source/os_sem.c \
../src/uCOS-II/Source/os_task.c \
../src/uCOS-II/Source/os_time.c \
../src/uCOS-II/Source/os_tmr.c 

OBJS += \
./src/uCOS-II/Source/os_core.o \
./src/uCOS-II/Source/os_dbg_r.o \
./src/uCOS-II/Source/os_flag.o \
./src/uCOS-II/Source/os_mbox.o \
./src/uCOS-II/Source/os_mem.o \
./src/uCOS-II/Source/os_mutex.o \
./src/uCOS-II/Source/os_q.o \
./src/uCOS-II/Source/os_sem.o \
./src/uCOS-II/Source/os_task.o \
./src/uCOS-II/Source/os_time.o \
./src/uCOS-II/Source/os_tmr.o 

C_DEPS += \
./src/uCOS-II/Source/os_core.d \
./src/uCOS-II/Source/os_dbg_r.d \
./src/uCOS-II/Source/os_flag.d \
./src/uCOS-II/Source/os_mbox.d \
./src/uCOS-II/Source/os_mem.d \
./src/uCOS-II/Source/os_mutex.d \
./src/uCOS-II/Source/os_q.d \
./src/uCOS-II/Source/os_sem.d \
./src/uCOS-II/Source/os_task.d \
./src/uCOS-II/Source/os_time.d \
./src/uCOS-II/Source/os_tmr.d 


# Each subdirectory must supply rules for building sources it contributes
src/uCOS-II/Source/%.o: ../src/uCOS-II/Source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -DNDEBUG -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -I"D:\users\work\KERONE2\ucosii_nova\ucos-ii_demo_TM\src\App\port" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


