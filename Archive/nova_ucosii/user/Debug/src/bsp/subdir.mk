################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bsp/devcfg.c \
../src/bsp/novalib.c \
../src/bsp/outbyte.c \
../src/bsp/xil_io.c \
../src/bsp/xil_printf.c \
../src/bsp/xuartps_hw.c 

CC_SRCS += \
../src/bsp/performance.cc 

OBJS += \
./src/bsp/devcfg.o \
./src/bsp/novalib.o \
./src/bsp/outbyte.o \
./src/bsp/performance.o \
./src/bsp/xil_io.o \
./src/bsp/xil_printf.o \
./src/bsp/xuartps_hw.o 

C_DEPS += \
./src/bsp/devcfg.d \
./src/bsp/novalib.d \
./src/bsp/outbyte.d \
./src/bsp/xil_io.d \
./src/bsp/xil_printf.d \
./src/bsp/xuartps_hw.d 

CC_DEPS += \
./src/bsp/performance.d 


# Each subdirectory must supply rules for building sources it contributes
src/bsp/%.o: ../src/bsp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -DNDEBUG -fpermissive -c -fmessage-length=0 -ffunction-sections -fstrict-aliasing -fno-rtti -fno-exceptions -fcheck-new -fshort-enums -fomit-frame-pointer -fno-stack-protector -Wconversion -Wctor-dtor-privacy -Wdeprecated -Winvalid-offsetof -Wnon-template-friend -Wold-style-cast -Woverloaded-virtual -Wpmf-conversions -Wreorder -Wsign-promo -Wstrict-null-sentinel -Wsynth -Waggregate-return -freg-struct-return -Wattributes -Wcast-align -Wdeprecated-declarations -Wextra -Winline -Wmissing-noreturn -Wpacked -Wshadow -Wstack-protector -Wstrict-aliasing -Wswitch -Wswitch-default -Wswitch-enum -Wsystem-headers -Wunsafe-loop-optimizations -Wvolatile-register-var -Wdisabled-optimization -Wformat -Wreturn-type -Wno-non-virtual-dtor -Wuninitialized -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/bsp/%.o: ../src/bsp/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -DNDEBUG -fpermissive -c -fmessage-length=0 -ffunction-sections -fstrict-aliasing -fno-rtti -fno-exceptions -fcheck-new -fshort-enums -fomit-frame-pointer -fno-stack-protector -Wconversion -Wctor-dtor-privacy -Wdeprecated -Winvalid-offsetof -Wnon-template-friend -Wold-style-cast -Woverloaded-virtual -Wpmf-conversions -Wreorder -Wsign-promo -Wstrict-null-sentinel -Wsynth -Waggregate-return -freg-struct-return -Wattributes -Wcast-align -Wdeprecated-declarations -Wextra -Winline -Wmissing-noreturn -Wpacked -Wshadow -Wstack-protector -Wstrict-aliasing -Wswitch -Wswitch-default -Wswitch-enum -Wsystem-headers -Wunsafe-loop-optimizations -Wvolatile-register-var -Wdisabled-optimization -Wformat -Wreturn-type -Wno-non-virtual-dtor -Wuninitialized -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


