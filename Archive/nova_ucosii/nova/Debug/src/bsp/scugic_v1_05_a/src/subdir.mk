################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bsp/scugic_v1_05_a/src/custom_api.c \
../src/bsp/scugic_v1_05_a/src/xscugic.c \
../src/bsp/scugic_v1_05_a/src/xscugic_g.c \
../src/bsp/scugic_v1_05_a/src/xscugic_hw.c \
../src/bsp/scugic_v1_05_a/src/xscugic_intr.c \
../src/bsp/scugic_v1_05_a/src/xscugic_selftest.c \
../src/bsp/scugic_v1_05_a/src/xscugic_sinit.c 

OBJS += \
./src/bsp/scugic_v1_05_a/src/custom_api.o \
./src/bsp/scugic_v1_05_a/src/xscugic.o \
./src/bsp/scugic_v1_05_a/src/xscugic_g.o \
./src/bsp/scugic_v1_05_a/src/xscugic_hw.o \
./src/bsp/scugic_v1_05_a/src/xscugic_intr.o \
./src/bsp/scugic_v1_05_a/src/xscugic_selftest.o \
./src/bsp/scugic_v1_05_a/src/xscugic_sinit.o 

C_DEPS += \
./src/bsp/scugic_v1_05_a/src/custom_api.d \
./src/bsp/scugic_v1_05_a/src/xscugic.d \
./src/bsp/scugic_v1_05_a/src/xscugic_g.d \
./src/bsp/scugic_v1_05_a/src/xscugic_hw.d \
./src/bsp/scugic_v1_05_a/src/xscugic_intr.d \
./src/bsp/scugic_v1_05_a/src/xscugic_selftest.d \
./src/bsp/scugic_v1_05_a/src/xscugic_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/bsp/scugic_v1_05_a/src/%.o: ../src/bsp/scugic_v1_05_a/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


