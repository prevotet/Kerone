################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../src/cpu/entry.S \
../src/cpu/head.S \
../src/cpu/tlb-v7.S \
../src/cpu/vector.S 

CC_SRCS += \
../src/cpu/shutdown.cc 

OBJS += \
./src/cpu/entry.o \
./src/cpu/head.o \
./src/cpu/shutdown.o \
./src/cpu/tlb-v7.o \
./src/cpu/vector.o 

CC_DEPS += \
./src/cpu/shutdown.d 

S_UPPER_DEPS += \
./src/cpu/entry.d \
./src/cpu/head.d \
./src/cpu/tlb-v7.d \
./src/cpu/vector.d 


# Each subdirectory must supply rules for building sources it contributes
src/cpu/%.o: ../src/cpu/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cpu/%.o: ../src/cpu/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


