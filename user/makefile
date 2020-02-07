################################################################################
# Kerone-user makefile
################################################################################

#-include ../makefile.init

RM := rm -rf
OBJDIR := build

CC=arm-xilinx-eabi-g++
CFLAGS=-Wall -Os -g
CFLAGS= -fpermissive#
CFLAGS+=-I../boards/zedboard/kerone_PR_bsp/ps7_cortexa9_0/include
CFLAGS+=-I./include
CFLAGS+=-I../boards/zedboard/custom_bsp/include
CFLAGS+=-DNDEBUG -O2 -c -mfloat-abi=softfp -fdata-sections -freorder-blocks -MMD -MP -MMD -MP
#LDFLAGS=-nostartfiles -n -mfloat-abi=hard -Wl,-T -Wl,./src/hypervisor.ld -L"D:\users\work\Xilinx\Vivado\2017.1\Zedboard\project_1\project_1.sdk\kerone_bsp\ps7_cortexa9_0\lib"
#LDFLAGS=-nostartfiles -n -mfloat-abi=softfp -Wl,-T -Wl,./src/user.ld -L../boards/zedboard/kerone_bsp/ps7_cortexa9_0/lib
LDFLAGS=-nostartfiles -n -mfloat-abi=hard -Wl,-T -Wl,./src/user.ld -L"../boards/zedboard/kerone_PR_bsp/ps7_cortexa9_0/lib" 
#LDFLAGS=-nostartfiles -n -mfloat-abi=softfp -Wl,-T -Wl,./src/user.ld -L"D:\users\work\Xilinx\Vivado\2017.1\Zedboard\project_1\project_1.sdk\kerone_bsp\ps7_cortexa9_0\lib"
# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include custom_bsp/subdir.mk
-include cpu/subdir.mk
-include subdir.mk
-include objects.mk


# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
user.elf.size 

LD_SRCS += \
./src/user.ld 

CC_SRCS += \
src/app/app.cc \
src/IVC_Channel.cc \
src/irq.cc \
src/syscall_list.cc \
src/user.cc \
../boards/zedboard/custom_bsp/performance.cc \
src/HWManager/HW_Task_Manager.cc \
src/HWManager/HWManager_irq.cc \
src/HWManager/performance.cc

C_SRCS = \
src/_exit.c \
src/abort.c \
src/print.c \
src/HWManager/devcfg.c

S_UPPER_SRCS += \
src/IntEentry.S \
src/Start.S \
src/syscall.S \
src/vpsr.S  \
src/HWManager/HWmanager_Entry.S

C_SRCS = \
src/_exit.c \
src/abort.c \
src/print.c  \
src/HWManager/devcfg.c

CC_DEPS += \
./$(OBJDIR)/app.d \
./$(OBJDIR)/IVC_Channel.d \
./$(OBJDIR)/irq.d \
./$(OBJDIR)/syscall_list.d \
./$(OBJDIR)/user.d  \
./$(OBJDIR)/HW_Task_Manager.d\
./$(OBJDIR)/HWManager_irq.d\
./$(OBJDIR)/performance.d

OBJS = \
./$(OBJDIR)/app.o \
./$(OBJDIR)/IVC_Channel.o \
./$(OBJDIR)/IntEentry.o \
./$(OBJDIR)/_exit.o \
./$(OBJDIR)/abort.o \
./$(OBJDIR)/print.o \
./$(OBJDIR)/start.o \
./$(OBJDIR)/irq.o \
./$(OBJDIR)/syscall.o \
./$(OBJDIR)/syscall_list.o \
./$(OBJDIR)/user.o \
./$(OBJDIR)/vpsr.o \
./$(OBJDIR)/HW_Task_Manager.o \
./$(OBJDIR)/HWManager_irq.o \
./$(OBJDIR)/HWmanager_Entry.o \
./$(OBJDIR)/performance.o \
./$(OBJDIR)/devcfg.o

C_DEPS += \
./$(OBJDIR)/_exit.d \
./$(OBJDIR)/abort.d \
./$(OBJDIR)/print.d  \
./$(OBJDIR)/HWManager/devcfg.d


S_UPPER_DEPS += \
./$(OBJDIR)/IntEentry.d \
./$(OBJDIR)/start.d \
./$(OBJDIR)/syscall.d \
./$(OBJDIR)/vpsr.d  \
./$(OBJDIR)/HWmanager_Entry.d 


# Each subdirectory must supply rules for building sources it contributes


# All Target
all: user.elf secondary-outputs

# Tool invocations
user.elf: $(OBJDIR) $(OBJS) ./src/user.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM g++ linker'
	$(CC) $(LDFLAGS) -o "user.elf" $(OBJS) $(USER_OBJS) $(LIBS) -Wl,--start-group,-lxil,-lgcc,-lc,-lstdc++,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

user.elf.size: user.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size user.elf  |tee "user.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

$(OBJDIR):
	mkdir -p build

$(OBJDIR)/%.o: src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(OBJDIR)/%.o: src/app/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(OBJDIR)/%.o: src/HWManager/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(OBJDIR)/%.o: src/HWManager/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(OBJDIR)/%.o: src/HWManager/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '
	
$(OBJDIR)/%.o: src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

$(OBJDIR)/%.o: src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

###################################################################################	
$(OBJDIR)/%.o: ../boards/zedboard/custom_bsp/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '	

$(OBJDIR)/%.o: ../boards/zedboard/custom_bsp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	$(CC) $(CFLAGS) -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '	

	
# Other Targets
clean:
	-$(RM) $(OBJDIR) $(CC_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS)$(ELFSIZE) user.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
