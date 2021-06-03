################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
A51_UPPER_SRCS += \
C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/SILABS_STARTUP.A51 

C_SRCS += \
../src/HC-SR04.c \
../src/InitDevice.c \
../src/Ultrasonic_sensor_main.c \
../src/delay.c \
../src/serial.c 

OBJS += \
./src/HC-SR04.OBJ \
./src/InitDevice.OBJ \
./src/SILABS_STARTUP.OBJ \
./src/Ultrasonic_sensor_main.OBJ \
./src/delay.OBJ \
./src/serial.OBJ 


# Each subdirectory must supply rules for building sources it contributes
src/%.OBJ: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	C51 "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

src/HC-SR04.OBJ: D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/HC-SR04.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Register_Enums.h C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/keil_8051/9.60/INC/STDIO.H C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdint.h D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/pin.h D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/serial.h C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/keil_8051/9.60/INC/MATH.H D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/delay.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Defs.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/si_toolchain.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdbool.h

src/InitDevice.OBJ: C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Register_Enums.h D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/InitDevice.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Defs.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/si_toolchain.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdint.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdbool.h

src/SILABS_STARTUP.OBJ: C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/SILABS_STARTUP.A51
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Assembler'
	AX51 "@$(patsubst %.OBJ,%.__ia,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

src/Ultrasonic_sensor_main.OBJ: C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Register_Enums.h D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/InitDevice.h D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/serial.h D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/delay.h D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/pin.h D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/HC-SR04.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdint.h C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/keil_8051/9.60/INC/STDIO.H C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Defs.h C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/keil_8051/9.60/INC/MATH.H C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/si_toolchain.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdbool.h

src/delay.OBJ: D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/delay.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Register_Enums.h C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/keil_8051/9.60/INC/STDIO.H C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdint.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Defs.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/si_toolchain.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdbool.h

src/serial.OBJ: D:/year4-semester2/Silicon_lab_year3/Ultrasonic_sensor/inc/serial.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Register_Enums.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/EFM8LB1/inc/SI_EFM8LB1_Defs.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/si_toolchain.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdint.h C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/8051/v4.2.0/Device/shared/si8051Base/stdbool.h


