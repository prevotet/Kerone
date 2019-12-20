################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/App/port/mibench_basicmath/basicmath_large.c \
../src/App/port/mibench_basicmath/basicmath_small.c \
../src/App/port/mibench_basicmath/cubic.c \
../src/App/port/mibench_basicmath/isqrt.c \
../src/App/port/mibench_basicmath/rad2deg.c 

OBJS += \
./src/App/port/mibench_basicmath/basicmath_large.o \
./src/App/port/mibench_basicmath/basicmath_small.o \
./src/App/port/mibench_basicmath/cubic.o \
./src/App/port/mibench_basicmath/isqrt.o \
./src/App/port/mibench_basicmath/rad2deg.o 

C_DEPS += \
./src/App/port/mibench_basicmath/basicmath_large.d \
./src/App/port/mibench_basicmath/basicmath_small.d \
./src/App/port/mibench_basicmath/cubic.d \
./src/App/port/mibench_basicmath/isqrt.d \
./src/App/port/mibench_basicmath/rad2deg.d 


# Each subdirectory must supply rules for building sources it contributes
src/App/port/mibench_basicmath/%.o: ../src/App/port/mibench_basicmath/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -DNDEBUG -I../src/App -I../src/BSP -I../src/Init -I../src/uC-CPU -I../src/uC-LIB -I../src/uC-CPU/ARM-Cortex-A9/GNU -I../src/uC-CSP/MCU -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore -I../src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/Zynq-7000 -I../src/uCOS-II/Source -I../src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP -I../src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore -I../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/include -I"C:\Xilinx\XIATAN\Xilinx\proj\tutoral\myproj\ucosii_nova\ucos-ii_demo_TM\src\App\port" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


