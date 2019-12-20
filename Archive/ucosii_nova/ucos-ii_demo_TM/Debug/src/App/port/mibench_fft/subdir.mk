################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/App/port/mibench_fft/fftmisc.c \
../src/App/port/mibench_fft/fourierf.c \
../src/App/port/mibench_fft/main.c 

OBJS += \
./src/App/port/mibench_fft/fftmisc.o \
./src/App/port/mibench_fft/fourierf.o \
./src/App/port/mibench_fft/main.o 

C_DEPS += \
./src/App/port/mibench_fft/fftmisc.d \
./src/App/port/mibench_fft/fourierf.d \
./src/App/port/mibench_fft/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/App/port/mibench_fft/%.o: ../src/App/port/mibench_fft/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -DNDEBUG -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -I"C:\Xilinx\XIATAN\Xilinx\proj\tutoral\myproj\ucosii_nova\ucos-ii_demo_TM\src\App\port" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


