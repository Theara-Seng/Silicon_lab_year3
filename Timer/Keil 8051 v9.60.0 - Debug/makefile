################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Keil tools exit code 1 is warnings only, so don't treat as an error in make
RC := test $$? -lt 2

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Timer.omf

# Tool invocations
Timer.omf: echo_path $(OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Keil 8051 Linker'
	wine "/home/tadashi/Downloads/SimplicityStudio_v5/developer/toolchains/keil_8051/9.60/BIN/LX51" "@Timer.lnp" || $(RC)
	@echo 'Finished building target: $@'

# Change from all upper case to the expected case
	@-mv "TIMER.OMF.CRBUILD" "$@"

# Generate hex file: Timer.hex
	@wine "/home/tadashi/Downloads/SimplicityStudio_v5/developer/toolchains/keil_8051/9.60/BIN/Ohx51" "Timer.omf" "HEXFILE (Timer.hex)" "H386" 2>&1 >/dev/null

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS) Timer.omf
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
# echo the path
echo_path:
	@echo PATH=$$PATH
	@echo ' '

