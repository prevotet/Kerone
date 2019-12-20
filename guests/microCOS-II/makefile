################################################################################
# MicroC Os-II guest OS makefile
################################################################################

#-include ../makefile.init

RM := rm -rf
OBJDIR := build

CC=arm-linux-gnueabi-gcc
CFLAGS=-Wall -Os -g
#CFLAGS+=-I./cpu
#CFLAGS+=-I./include
#CFLAGS+=-I../boards/zedboard/kerone_bsp/ps7_cortexa9_0/include
CFLAGS+=-I../../boards/zedboard/mucos_bsp/ps7_cortexa9_0/include  
#CFLAGS+=-I../boards/zedboard/custom_bsp
#CFLAGS+=-I../boards/zedboard/custom_bsp/include
CFLAGS+=-DNDEBUG -O2 -c -mfloat-abi=softfp -specs=Xilinx.spec -fdata-sections -freorder-blocks -MMD -MP -MMD -MP
#LDFLAGS=-nostartfiles -n -mfloat-abi=hard -Wl,-T -Wl,./src/hypervisor.ld -L"D:\users\work\Xilinx\Vivado\2017.1\Zedboard\project_1\project_1.sdk\kerone_bsp\ps7_cortexa9_0\lib"
LDFLAGS=-n -mfloat-abi=hard -specs=Xilinx.spec -Wl,-T -Wl,./src/lscript.ld -L"../../boards/zedboard/mucos_bsp/ps7_cortexa9_0/lib"
LIBS := -Wl,--start-group,-lucos,-lgcc,-lc,--end-group -Wl,--start-group,-lxil,-lucos,-lgcc,-lc,--end-group
# ifneq ($(MAKECMDGOALS),clean)
# ifneq ($(strip $(CC_DEPS)),)
# -include $(CC_DEPS)
# endif
# ifneq ($(strip $(C_UPPER_DEPS)),)
# -include $(C_UPPER_DEPS)
# endif
# ifneq ($(strip $(CXX_DEPS)),)
# -include $(CXX_DEPS)
# endif
# ifneq ($(strip $(S_UPPER_DEPS)),)
# -include $(S_UPPER_DEPS)
# endif
# ifneq ($(strip $(C_DEPS)),)
# -include $(C_DEPS)
# endif
# ifneq ($(strip $(CPP_DEPS)),)
# -include $(CPP_DEPS)
# endif
# endif

#-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
mucos2.elf.size  

LD_SRCS += \
./src/lscript.ld 

CC_SRCS := 

S_UPPER_SRCS :=

C_SRCS = \
./src/app.c 

CC_DEPS := 

OBJS = \
./$(OBJDIR)/app.o 

C_DEPS += \
./$(OBJDIR)/app.d 

S_UPPER_DEPS := 


# Each subdirectory must supply rules for building sources it contributesMakefile

# All Target
all: mucos2.elf secondary-outputs

# Tool invocations
mucos2.elf: $(OBJDIR) $(OBJS) ./src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	$(CC) $(LDFLAGS) -o "mucos2.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

mucos2.elf.size: mucos2.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size mucos2.elf  |tee "mucos2.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

$(OBJDIR):
	mkdir -p $(OBJDIR)
#	mkdir -p $(OBJDIR)/custom_bsp
#	mkdir -p $(OBJDIR)/cpu

$(OBJDIR)/%.o: src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

# $(OBJDIR)/custom_bsp/%.o: ../boards/zedboard/custom_bsp/%.c
	# @echo 'Building file: $<'
	# @echo 'Invoking: ARM g++ compiler'
	# $(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	# @echo 'Finished building: $<'
	# @echo ' '	

$(OBJDIR)/%.o: src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

# $(OBJDIR)/custom_bsp/%.o: ../boards/zedboard/custom_bsp/%.cc
	# @echo 'Building file: $<'
	# @echo 'Invoking: ARM g++ compiler'
	# $(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	# @echo 'Finished building: $<'
	# @echo ' '	

# $(OBJDIR)/cpu/%.o: cpu/%.S
	# @echo 'Building file: $<'
	# @echo 'Invoking: ARM g++ compiler'
	# $(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	# @echo 'Finished building: $<'
	# @echo ' '

# $(OBJDIR)/cpu/%.o: cpu/%.cc
	# @echo 'Building file: $<'
	# @echo 'Invoking: ARM g++ compiler'
	# $(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	# @echo 'Finished building: $<'
	# @echo ' '	
	
	
# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS)$(ELFSIZE)$(OBJDIR) mucos2.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
