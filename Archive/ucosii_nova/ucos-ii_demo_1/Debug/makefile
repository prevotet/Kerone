################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/uCOS-II/Source/subdir.mk
-include src/uCOS-II/Ports/ARM-Cortex-A9/Generic/GNU/subdir.mk
-include src/uCOS-II/Ports/ARM-Cortex-A9/CSP/Xilinx/Cortex-A9_MPCore/subdir.mk
-include src/uC-LIB/subdir.mk
-include src/uC-CSP/MCU/Xilinx/Cortex-A9_MPCore/subdir.mk
-include src/uC-CSP/MCU/subdir.mk
-include src/uC-CPU/ARM-Cortex-A9/GNU/subdir.mk
-include src/uC-CPU/subdir.mk
-include src/Init/subdir.mk
-include src/BSP/subdir.mk
-include src/App/port/subdir.mk
-include src/App/subdir.mk
-include .metadata/.plugins/org.eclipse.cdt.make.core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
ucos-ii_demo_1.elf.size \


# All Target
all: ucos-ii_demo_1.elf secondary-outputs

# Tool invocations
ucos-ii_demo_1.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	arm-xilinx-eabi-gcc -gc-sections -static -n  -Wl,-Map -Wl,"C:\Xilinx\XIATAN\Xilinx\proj\tutoral\myproj\ucosii_nova\ucos-ii_demo_1\Debug\ucosii.map" -Wl,-T -Wl,../src/lscript.ld -L../../ucos-ii_demo_0_bsp/ps7_cortexa9_0/lib -o "ucos-ii_demo_1.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

ucos-ii_demo_1.elf.size: ucos-ii_demo_1.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size ucos-ii_demo_1.elf  |tee "ucos-ii_demo_1.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(S_UPPER_DEPS) ucos-ii_demo_1.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
