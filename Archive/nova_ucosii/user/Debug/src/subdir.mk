################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/_exit.c \
../src/abort.c \
../src/print.c 

LD_SRCS += \
../src/user.ld 

S_UPPER_SRCS += \
../src/IntEentry.S \
../src/start.S \
../src/syscall.S \
../src/vpsr.S 

CC_SRCS += \
../src/IVC_Channel.cc \
../src/irq.cc \
../src/syscall_list.cc \
../src/user.cc 

OBJS += \
./src/IVC_Channel.o \
./src/IntEentry.o \
./src/_exit.o \
./src/abort.o \
./src/irq.o \
./src/print.o \
./src/start.o \
./src/syscall.o \
./src/syscall_list.o \
./src/user.o \
./src/vpsr.o 

C_DEPS += \
./src/_exit.d \
./src/abort.d \
./src/print.d 

CC_DEPS += \
./src/IVC_Channel.d \
./src/irq.d \
./src/syscall_list.d \
./src/user.d 

S_UPPER_DEPS += \
./src/IntEentry.d \
./src/start.d \
./src/syscall.d \
./src/vpsr.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -DNDEBUG -fpermissive -c -fmessage-length=0 -ffunction-sections -fstrict-aliasing -fno-rtti -fno-exceptions -fcheck-new -fshort-enums -fomit-frame-pointer -fno-stack-protector -Wconversion -Wctor-dtor-privacy -Wdeprecated -Winvalid-offsetof -Wnon-template-friend -Wold-style-cast -Woverloaded-virtual -Wpmf-conversions -Wreorder -Wsign-promo -Wstrict-null-sentinel -Wsynth -Waggregate-return -freg-struct-return -Wattributes -Wcast-align -Wdeprecated-declarations -Wextra -Winline -Wmissing-noreturn -Wpacked -Wshadow -Wstack-protector -Wstrict-aliasing -Wswitch -Wswitch-default -Wswitch-enum -Wsystem-headers -Wunsafe-loop-optimizations -Wvolatile-register-var -Wdisabled-optimization -Wformat -Wreturn-type -Wno-non-virtual-dtor -Wuninitialized -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -DNDEBUG -fpermissive -c -fmessage-length=0 -ffunction-sections -fstrict-aliasing -fno-rtti -fno-exceptions -fcheck-new -fshort-enums -fomit-frame-pointer -fno-stack-protector -Wconversion -Wctor-dtor-privacy -Wdeprecated -Winvalid-offsetof -Wnon-template-friend -Wold-style-cast -Woverloaded-virtual -Wpmf-conversions -Wreorder -Wsign-promo -Wstrict-null-sentinel -Wsynth -Waggregate-return -freg-struct-return -Wattributes -Wcast-align -Wdeprecated-declarations -Wextra -Winline -Wmissing-noreturn -Wpacked -Wshadow -Wstack-protector -Wstrict-aliasing -Wswitch -Wswitch-default -Wswitch-enum -Wsystem-headers -Wunsafe-loop-optimizations -Wvolatile-register-var -Wdisabled-optimization -Wformat -Wreturn-type -Wno-non-virtual-dtor -Wuninitialized -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -DNDEBUG -fpermissive -c -fmessage-length=0 -ffunction-sections -fstrict-aliasing -fno-rtti -fno-exceptions -fcheck-new -fshort-enums -fomit-frame-pointer -fno-stack-protector -Wconversion -Wctor-dtor-privacy -Wdeprecated -Winvalid-offsetof -Wnon-template-friend -Wold-style-cast -Woverloaded-virtual -Wpmf-conversions -Wreorder -Wsign-promo -Wstrict-null-sentinel -Wsynth -Waggregate-return -freg-struct-return -Wattributes -Wcast-align -Wdeprecated-declarations -Wextra -Winline -Wmissing-noreturn -Wpacked -Wshadow -Wstack-protector -Wstrict-aliasing -Wswitch -Wswitch-default -Wswitch-enum -Wsystem-headers -Wunsafe-loop-optimizations -Wvolatile-register-var -Wdisabled-optimization -Wformat -Wreturn-type -Wno-non-virtual-dtor -Wuninitialized -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


