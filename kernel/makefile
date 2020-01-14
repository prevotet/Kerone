################################################################################
# Kerone-Kernel makefile
################################################################################

#-include ../makefile.init

RM := rm -rf
OBJDIR := build

CC=arm-xilinx-eabi-g++
CFLAGS=-Wall -Os -g
CFLAGS+=-I./cpu
CFLAGS+=-I./include
CFLAGS+=-I../boards/zedboard/kerone_PR_bsp/ps7_cortexa9_0/libsrc/axidma_v9_3/src
CFLAGS+=-I../boards/zedboard/kerone_PR_bsp/ps7_cortexa9_0/include #Trying this one
CFLAGS+=-I../boards/zedboard/custom_bsp
CFLAGS+=-I../boards/zedboard/custom_bsp/include
CFLAGS+=-DNDEBUG -O2 -c -mfloat-abi=softfp -fdata-sections -freorder-blocks -MMD -MP -MMD -MP
LDFLAGS=-nostartfiles -n -mfloat-abi=hard -Wl,-T -Wl,./src/hypervisor.ld -L"../boards/zedboard/kerone_PR_bsp/ps7_cortexa9_0/lib"
# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include custom_bsp/subdir.mk
-include cpu/subdir.mk
-include subdir.mk
-include objects.mk

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
kerone.elf.size 

LD_SRCS += \
./src/hypervisor.ld 

CC_SRCS += \
./src/decode.cc \
./src/demo.cc \
./src/ec.cc \
./src/exception.cc \
./src/init.cc \
./src/kalloc.cc \
./src/msg.cc \
./src/ptab.cc \
./src/ualloc.cc \
./src/vec.cc \
./src/vfp.cc \
./src/vgic.cc \
../boards/zedboard/custom_bsp/performance.cc \
../arch/zynq/timer.cc \
cpu/shutdown.cc 

S_UPPER_SRCS += \
cpu/entry.S \
cpu/head.S \
cpu/tlb-v7.S \
cpu/vector.S 

C_SRCS = \
./src/_exit.c \
./src/print.c \
../boards/zedboard/custom_bsp/custom_api.c \
../boards/zedboard/custom_bsp/private_timer.c \
../boards/zedboard/custom_bsp/custom_api.c \
../boards/zedboard/custom_bsp/private_timer.c 

CC_DEPS += \
./$(OBJDIR)/decode.d \
./$(OBJDIR)/demo.d \
./$(OBJDIR)/ec.d \
./$(OBJDIR)/exception.d \
./$(OBJDIR)/init.d \
./$(OBJDIR)/kalloc.d \
./$(OBJDIR)/msg.d \
./$(OBJDIR)/ptab.d \
./$(OBJDIR)/ualloc.d \
./$(OBJDIR)/vec.d \
./$(OBJDIR)/vfp.d \
./$(OBJDIR)/vgic.d \
../boards/zedboard/custom_bsp/performance.d \
../arch/zynq/timer.d \
./$(OBJDIR)/cpu/shutdown.d

OBJS = \
./$(OBJDIR)/_exit.o \
./$(OBJDIR)/decode.o \
./$(OBJDIR)/demo.o \
./$(OBJDIR)/ec.o \
./$(OBJDIR)/exception.o \
./$(OBJDIR)/init.o \
./$(OBJDIR)/kalloc.o \
./$(OBJDIR)/msg.o \
./$(OBJDIR)/print.o \
./$(OBJDIR)/ptab.o \
./$(OBJDIR)/ualloc.o \
./$(OBJDIR)/vec.o \
./$(OBJDIR)/vfp.o \
./$(OBJDIR)/vgic.o \
./$(OBJDIR)/custom_bsp/custom_api.o \
./$(OBJDIR)/custom_bsp/performance.o \
./$(OBJDIR)/custom_bsp/private_timer.o \
./$(OBJDIR)/arch/zynq/timer.o \
./$(OBJDIR)/cpu/entry.o \
./$(OBJDIR)/cpu/head.o \
./$(OBJDIR)/cpu/shutdown.o \
./$(OBJDIR)/cpu/tlb-v7.o \
./$(OBJDIR)/cpu/vector.o 

C_DEPS += \
./$(OBJDIR)/_exit.d \
./$(OBJDIR)/print.d \
./$(OBJDIR)/custom_bsp/custom_api.d \
./$(OBJDIR)/custom_bsp/private_timer.d 

S_UPPER_DEPS += \
./$(OBJDIR)/cpu/entry.d \
./$(OBJDIR)/cpu/head.d \
./$(OBJDIR)/cpu/tlb-v7.d \
./$(OBJDIR)/cpu/vector.d 

# Each subdirectory must supply rules for building sources it contributes


# All Target
all: kerone.elf secondary-outputs

# Tool invocations
kerone.elf: $(OBJDIR) $(OBJS) ./src/hypervisor.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM g++ linker'
	$(CC) $(LDFLAGS) -o "kerone.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

kerone.elf.size: kerone.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size kerone.elf  |tee "kerone.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

$(OBJDIR):
	mkdir -p $(OBJDIR)
	mkdir -p $(OBJDIR)/custom_bsp
	mkdir -p $(OBJDIR)/cpu
	mkdir -p $(OBJDIR)/arch/zynq

$(OBJDIR)/%.o: src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(OBJDIR)/custom_bsp/%.o: ../boards/zedboard/custom_bsp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '	

$(OBJDIR)/%.o: src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(OBJDIR)/custom_bsp/%.o: ../boards/zedboard/custom_bsp/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '	

$(OBJDIR)/arch/zynq/%.o: ../arch/zynq/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '	




$(OBJDIR)/cpu/%.o: cpu/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(OBJDIR)/cpu/%.o: cpu/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '	
	
	
# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS)$(ELFSIZE)$(OBJDIR) kerone.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
