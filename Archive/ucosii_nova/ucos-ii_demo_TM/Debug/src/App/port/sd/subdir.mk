################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/App/port/sd/ff.c \
../src/App/port/sd/mmc.c \
../src/App/port/sd/sd.c 

OBJS += \
./src/App/port/sd/ff.o \
./src/App/port/sd/mmc.o \
./src/App/port/sd/sd.o 

C_DEPS += \
./src/App/port/sd/ff.d \
./src/App/port/sd/mmc.d \
./src/App/port/sd/sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/App/port/sd/%.o: ../src/App/port/sd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -DNDEBUG -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -I"C:\Xilinx\XIATAN\Xilinx\proj\tutoral\myproj\ucosii_nova\ucos-ii_demo_TM\src\App\port" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


