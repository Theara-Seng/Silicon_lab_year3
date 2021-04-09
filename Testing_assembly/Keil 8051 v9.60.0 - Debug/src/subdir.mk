################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../src/main.asm 

OBJS += \
./src/main.OBJ 


# Each subdirectory must supply rules for building sources it contributes
src/%.OBJ: ../src/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Assembler'
	wine "/home/tadashi/Downloads/SimplicityStudio_v5/developer/toolchains/keil_8051/9.60/BIN/AX51" "@$(patsubst %.OBJ,%.__ia,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '


