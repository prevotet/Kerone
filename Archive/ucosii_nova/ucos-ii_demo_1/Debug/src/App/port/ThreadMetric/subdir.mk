################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/App/port/ThreadMetric/TM_API.c \
../src/App/port/ThreadMetric/tm_basic_processing_test.c 

OBJS += \
./src/App/port/ThreadMetric/TM_API.o \
./src/App/port/ThreadMetric/tm_basic_processing_test.o 

C_DEPS += \
./src/App/port/ThreadMetric/TM_API.d \
./src/App/port/ThreadMetric/tm_basic_processing_test.d 


# Each subdirectory must supply rules for building sources it contributes
src/App/port/ThreadMetric/%.o: ../src/App/port/ThreadMetric/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O2 -DNDEBUG -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


