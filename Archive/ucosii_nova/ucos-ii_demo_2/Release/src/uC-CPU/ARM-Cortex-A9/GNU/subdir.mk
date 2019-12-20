################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/uC-CPU/ARM-Cortex-A9/GNU/cpu_a.s 

OBJS += \
./src/uC-CPU/ARM-Cortex-A9/GNU/cpu_a.o 


# Each subdirectory must supply rules for building sources it contributes
src/uC-CPU/ARM-Cortex-A9/GNU/%.o: ../src/uC-CPU/ARM-Cortex-A9/GNU/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc assembler'
	arm-xilinx-eabi-gcc -c -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


