################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/App/port/ThreadMetric/tm_basic_processing_test.c \
../src/App/port/ThreadMetric/tm_interrupt_preemption_processing_test.c \
../src/App/port/ThreadMetric/tm_interrupt_processing_test.c \
../src/App/port/ThreadMetric/tm_memory_allocation_test.c \
../src/App/port/ThreadMetric/tm_message_processing_test.c \
../src/App/port/ThreadMetric/tm_porting_layer.c \
../src/App/port/ThreadMetric/tm_preemptive_scheduling_test.c \
../src/App/port/ThreadMetric/tm_synchronization_processing_test.c 

OBJS += \
./src/App/port/ThreadMetric/tm_basic_processing_test.o \
./src/App/port/ThreadMetric/tm_interrupt_preemption_processing_test.o \
./src/App/port/ThreadMetric/tm_interrupt_processing_test.o \
./src/App/port/ThreadMetric/tm_memory_allocation_test.o \
./src/App/port/ThreadMetric/tm_message_processing_test.o \
./src/App/port/ThreadMetric/tm_porting_layer.o \
./src/App/port/ThreadMetric/tm_preemptive_scheduling_test.o \
./src/App/port/ThreadMetric/tm_synchronization_processing_test.o 

C_DEPS += \
./src/App/port/ThreadMetric/tm_basic_processing_test.d \
./src/App/port/ThreadMetric/tm_interrupt_preemption_processing_test.d \
./src/App/port/ThreadMetric/tm_interrupt_processing_test.d \
./src/App/port/ThreadMetric/tm_memory_allocation_test.d \
./src/App/port/ThreadMetric/tm_message_processing_test.d \
./src/App/port/ThreadMetric/tm_porting_layer.d \
./src/App/port/ThreadMetric/tm_preemptive_scheduling_test.d \
./src/App/port/ThreadMetric/tm_synchronization_processing_test.d 


# Each subdirectory must supply rules for building sources it contributes
src/App/port/ThreadMetric/%.o: ../src/App/port/ThreadMetric/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -DNDEBUG -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -I"D:\users\work\KERONE2\ucosii_nova\ucos-ii_demo_TM\src\App\port" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


