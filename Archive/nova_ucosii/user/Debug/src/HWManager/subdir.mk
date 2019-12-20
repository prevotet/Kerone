################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../src/HWManager/HWmanager_Entry.S 

CC_SRCS += \
../src/HWManager/HWManager_irq.cc \
../src/HWManager/HW_Task_Manager.cc 

OBJS += \
./src/HWManager/HWManager_irq.o \
./src/HWManager/HW_Task_Manager.o \
./src/HWManager/HWmanager_Entry.o 

CC_DEPS += \
./src/HWManager/HWManager_irq.d \
./src/HWManager/HW_Task_Manager.d 

S_UPPER_DEPS += \
./src/HWManager/HWmanager_Entry.d 


# Each subdirectory must supply rules for building sources it contributes
src/HWManager/%.o: ../src/HWManager/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -DNDEBUG -fpermissive -c -fmessage-length=0 -ffunction-sections -fstrict-aliasing -fno-rtti -fno-exceptions -fcheck-new -fshort-enums -fomit-frame-pointer -fno-stack-protector -Wconversion -Wctor-dtor-privacy -Wdeprecated -Winvalid-offsetof -Wnon-template-friend -Wold-style-cast -Woverloaded-virtual -Wpmf-conversions -Wreorder -Wsign-promo -Wstrict-null-sentinel -Wsynth -Waggregate-return -freg-struct-return -Wattributes -Wcast-align -Wdeprecated-declarations -Wextra -Winline -Wmissing-noreturn -Wpacked -Wshadow -Wstack-protector -Wstrict-aliasing -Wswitch -Wswitch-default -Wswitch-enum -Wsystem-headers -Wunsafe-loop-optimizations -Wvolatile-register-var -Wdisabled-optimization -Wformat -Wreturn-type -Wno-non-virtual-dtor -Wuninitialized -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/HWManager/%.o: ../src/HWManager/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -DNDEBUG -fpermissive -c -fmessage-length=0 -ffunction-sections -fstrict-aliasing -fno-rtti -fno-exceptions -fcheck-new -fshort-enums -fomit-frame-pointer -fno-stack-protector -Wconversion -Wctor-dtor-privacy -Wdeprecated -Winvalid-offsetof -Wnon-template-friend -Wold-style-cast -Woverloaded-virtual -Wpmf-conversions -Wreorder -Wsign-promo -Wstrict-null-sentinel -Wsynth -Waggregate-return -freg-struct-return -Wattributes -Wcast-align -Wdeprecated-declarations -Wextra -Winline -Wmissing-noreturn -Wpacked -Wshadow -Wstack-protector -Wstrict-aliasing -Wswitch -Wswitch-default -Wswitch-enum -Wsystem-headers -Wunsafe-loop-optimizations -Wvolatile-register-var -Wdisabled-optimization -Wformat -Wreturn-type -Wno-non-virtual-dtor -Wuninitialized -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


