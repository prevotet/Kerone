################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bsp/devcfg_v2_03_a/src/xdevcfg.c \
../src/bsp/devcfg_v2_03_a/src/xdevcfg_g.c \
../src/bsp/devcfg_v2_03_a/src/xdevcfg_intr.c \
../src/bsp/devcfg_v2_03_a/src/xdevcfg_selftest.c \
../src/bsp/devcfg_v2_03_a/src/xdevcfg_sinit.c 

OBJS += \
./src/bsp/devcfg_v2_03_a/src/xdevcfg.o \
./src/bsp/devcfg_v2_03_a/src/xdevcfg_g.o \
./src/bsp/devcfg_v2_03_a/src/xdevcfg_intr.o \
./src/bsp/devcfg_v2_03_a/src/xdevcfg_selftest.o \
./src/bsp/devcfg_v2_03_a/src/xdevcfg_sinit.o 

C_DEPS += \
./src/bsp/devcfg_v2_03_a/src/xdevcfg.d \
./src/bsp/devcfg_v2_03_a/src/xdevcfg_g.d \
./src/bsp/devcfg_v2_03_a/src/xdevcfg_intr.d \
./src/bsp/devcfg_v2_03_a/src/xdevcfg_selftest.d \
./src/bsp/devcfg_v2_03_a/src/xdevcfg_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/bsp/devcfg_v2_03_a/src/%.o: ../src/bsp/devcfg_v2_03_a/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -DNDEBUG -fpermissive -c -fmessage-length=0 -ffunction-sections -fstrict-aliasing -fno-rtti -fno-exceptions -fcheck-new -fshort-enums -fomit-frame-pointer -fno-stack-protector -Wconversion -Wctor-dtor-privacy -Wdeprecated -Winvalid-offsetof -Wnon-template-friend -Wold-style-cast -Woverloaded-virtual -Wpmf-conversions -Wreorder -Wsign-promo -Wstrict-null-sentinel -Wsynth -Waggregate-return -freg-struct-return -Wattributes -Wcast-align -Wdeprecated-declarations -Wextra -Winline -Wmissing-noreturn -Wpacked -Wshadow -Wstack-protector -Wstrict-aliasing -Wswitch -Wswitch-default -Wswitch-enum -Wsystem-headers -Wunsafe-loop-optimizations -Wvolatile-register-var -Wdisabled-optimization -Wformat -Wreturn-type -Wno-non-virtual-dtor -Wuninitialized -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


