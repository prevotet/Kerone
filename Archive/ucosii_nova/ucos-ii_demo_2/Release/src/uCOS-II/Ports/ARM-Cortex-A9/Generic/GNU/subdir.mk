################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/os_cpu_c.c 

S_UPPER_SRCS += \
../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/os_cpu_a.S 

OBJS += \
./src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/os_cpu_a.o \
./src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/os_cpu_c.o 

C_DEPS += \
./src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/os_cpu_c.d 

S_UPPER_DEPS += \
./src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/os_cpu_a.d 


# Each subdirectory must supply rules for building sources it contributes
src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/%.o: ../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O2 -g0 -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/%.o: ../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O2 -g0 -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


