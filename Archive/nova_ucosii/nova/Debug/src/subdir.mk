################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/_exit.c \
../src/print.c 

LD_SRCS += \
../src/hypervisor.ld 

CC_SRCS += \
../src/decode.cc \
../src/demo.cc \
../src/ec.cc \
../src/exception.cc \
../src/init.cc \
../src/kalloc.cc \
../src/msg.cc \
../src/ptab.cc \
../src/ualloc.cc \
../src/vec.cc \
../src/vfp.cc \
../src/vgic.cc 

OBJS += \
./src/_exit.o \
./src/decode.o \
./src/demo.o \
./src/ec.o \
./src/exception.o \
./src/init.o \
./src/kalloc.o \
./src/msg.o \
./src/print.o \
./src/ptab.o \
./src/ualloc.o \
./src/vec.o \
./src/vfp.o \
./src/vgic.o 

C_DEPS += \
./src/_exit.d \
./src/print.d 

CC_DEPS += \
./src/decode.d \
./src/demo.d \
./src/ec.d \
./src/exception.d \
./src/init.d \
./src/kalloc.d \
./src/msg.d \
./src/ptab.d \
./src/ualloc.d \
./src/vec.d \
./src/vfp.d \
./src/vgic.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O2 -DNDEBUG -c -fmessage-length=0 -fdata-sections -ffunction-sections -fomit-frame-pointer -freg-struct-return -freorder-blocks -funit-at-a-time -fno-exceptions -fno-rtti -fno-stack-protector -fvisibility-inlines-hidden -Wall -Wextra -Waggregate-return -Wcast-align -Wcast-qual -Wconversion -Wdisabled-optimization -Wformat=2 -Wmissing-format-attribute -Wmissing-noreturn -Wpacked -Wpointer-arith -Wredundant-decls -Wshadow -Wwrite-strings -Wabi -Wctor-dtor-privacy -Wno-non-virtual-dtor -Wold-style-cast -Woverloaded-virtual -Wsign-promo -Wframe-larger-than=64 -Wlogical-op -Wstrict-null-sentinel -Wstrict-overflow=5 -Wvolatile-register-var -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


