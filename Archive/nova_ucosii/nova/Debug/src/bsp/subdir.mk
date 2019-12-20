################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bsp/outbyte.c \
../src/bsp/private_timer.c \
../src/bsp/xil_cache.c \
../src/bsp/xil_exception.c \
../src/bsp/xil_io.c \
../src/bsp/xil_printf.c \
../src/bsp/xuartps_hw.c 

CC_SRCS += \
../src/bsp/performance.cc 

OBJS += \
./src/bsp/outbyte.o \
./src/bsp/performance.o \
./src/bsp/private_timer.o \
./src/bsp/xil_cache.o \
./src/bsp/xil_exception.o \
./src/bsp/xil_io.o \
./src/bsp/xil_printf.o \
./src/bsp/xuartps_hw.o 

C_DEPS += \
./src/bsp/outbyte.d \
./src/bsp/private_timer.d \
./src/bsp/xil_cache.d \
./src/bsp/xil_exception.d \
./src/bsp/xil_io.d \
./src/bsp/xil_printf.d \
./src/bsp/xuartps_hw.d 

CC_DEPS += \
./src/bsp/performance.d 


# Each subdirectory must supply rules for building sources it contributes
src/bsp/%.o: ../src/bsp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/bsp/%.o: ../src/bsp/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


