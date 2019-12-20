################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../src/assembly/cache-v7.S \
../src/assembly/entry.S \
../src/assembly/head.S \
../src/assembly/tlb-v7.S \
../src/assembly/vector.S 

OBJS += \
./src/assembly/cache-v7.o \
./src/assembly/entry.o \
./src/assembly/head.o \
./src/assembly/tlb-v7.o \
./src/assembly/vector.o 

S_UPPER_DEPS += \
./src/assembly/cache-v7.d \
./src/assembly/entry.d \
./src/assembly/head.d \
./src/assembly/tlb-v7.d \
./src/assembly/vector.d 


# Each subdirectory must supply rules for building sources it contributes
src/assembly/%.o: ../src/assembly/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


