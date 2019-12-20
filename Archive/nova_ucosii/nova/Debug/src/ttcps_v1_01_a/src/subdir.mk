################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ttcps_v1_01_a/src/xttcps.c \
../src/ttcps_v1_01_a/src/xttcps_g.c \
../src/ttcps_v1_01_a/src/xttcps_options.c \
../src/ttcps_v1_01_a/src/xttcps_selftest.c \
../src/ttcps_v1_01_a/src/xttcps_sinit.c 

OBJS += \
./src/ttcps_v1_01_a/src/xttcps.o \
./src/ttcps_v1_01_a/src/xttcps_g.o \
./src/ttcps_v1_01_a/src/xttcps_options.o \
./src/ttcps_v1_01_a/src/xttcps_selftest.o \
./src/ttcps_v1_01_a/src/xttcps_sinit.o 

C_DEPS += \
./src/ttcps_v1_01_a/src/xttcps.d \
./src/ttcps_v1_01_a/src/xttcps_g.d \
./src/ttcps_v1_01_a/src/xttcps_options.d \
./src/ttcps_v1_01_a/src/xttcps_selftest.d \
./src/ttcps_v1_01_a/src/xttcps_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/ttcps_v1_01_a/src/%.o: ../src/ttcps_v1_01_a/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


