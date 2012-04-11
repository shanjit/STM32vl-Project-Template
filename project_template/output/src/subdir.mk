# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/core_cm3.c \
../src/main.c \
../src/stm32f10x_it.c \
../src/system_stm32f10x.c 

S_UPPER_SRCS += \
../src/startup_stm32f10x_md_vl.S 

OBJS += \
./src/core_cm3.o \
./src/main.o \
./src/startup_stm32f10x_md_vl.o \
./src/stm32f10x_it.o \
./src/system_stm32f10x.o 

C_DEPS += \
./src/core_cm3.d \
./src/main.d \
./src/stm32f10x_it.d \
./src/system_stm32f10x.d \


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -DSTM32F10X_MD_VL -DUSE_STDPERIPH_DRIVER -DUSE_STM32_DISCOVERY -I"/home/cuil/workspace/arm/stm32_linux/gpio/src" -I"/home/cuil/workspace/arm/stm32_linux/gpio/peri_library/peri_inc" -O0 -g3 -Wall -c -mthumb -mcpu=cortex-m3 -mfix-cortex-m3-ldrd -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	arm-none-eabi-as -mthumb -mcpu=cortex-m3 -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '
