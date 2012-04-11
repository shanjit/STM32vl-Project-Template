# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../peri_library/peri_src/misc.c \
../peri_library/peri_src/stm32f10x_adc.c \
../peri_library/peri_src/stm32f10x_bkp.c \
../peri_library/peri_src/stm32f10x_can.c \
../peri_library/peri_src/stm32f10x_cec.c \
../peri_library/peri_src/stm32f10x_crc.c \
../peri_library/peri_src/stm32f10x_dac.c \
../peri_library/peri_src/stm32f10x_dbgmcu.c \
../peri_library/peri_src/stm32f10x_dma.c \
../peri_library/peri_src/stm32f10x_exti.c \
../peri_library/peri_src/stm32f10x_flash.c \
../peri_library/peri_src/stm32f10x_fsmc.c \
../peri_library/peri_src/stm32f10x_gpio.c \
../peri_library/peri_src/stm32f10x_i2c.c \
../peri_library/peri_src/stm32f10x_iwdg.c \
../peri_library/peri_src/stm32f10x_pwr.c \
../peri_library/peri_src/stm32f10x_rcc.c \
../peri_library/peri_src/stm32f10x_rtc.c \
../peri_library/peri_src/stm32f10x_sdio.c \
../peri_library/peri_src/stm32f10x_spi.c \
../peri_library/peri_src/stm32f10x_tim.c \
../peri_library/peri_src/stm32f10x_usart.c \
../peri_library/peri_src/stm32f10x_wwdg.c 

OBJS += \
./peri_library/peri_src/misc.o \
./peri_library/peri_src/stm32f10x_adc.o \
./peri_library/peri_src/stm32f10x_bkp.o \
./peri_library/peri_src/stm32f10x_can.o \
./peri_library/peri_src/stm32f10x_cec.o \
./peri_library/peri_src/stm32f10x_crc.o \
./peri_library/peri_src/stm32f10x_dac.o \
./peri_library/peri_src/stm32f10x_dbgmcu.o \
./peri_library/peri_src/stm32f10x_dma.o \
./peri_library/peri_src/stm32f10x_exti.o \
./peri_library/peri_src/stm32f10x_flash.o \
./peri_library/peri_src/stm32f10x_fsmc.o \
./peri_library/peri_src/stm32f10x_gpio.o \
./peri_library/peri_src/stm32f10x_i2c.o \
./peri_library/peri_src/stm32f10x_iwdg.o \
./peri_library/peri_src/stm32f10x_pwr.o \
./peri_library/peri_src/stm32f10x_rcc.o \
./peri_library/peri_src/stm32f10x_rtc.o \
./peri_library/peri_src/stm32f10x_sdio.o \
./peri_library/peri_src/stm32f10x_spi.o \
./peri_library/peri_src/stm32f10x_tim.o \
./peri_library/peri_src/stm32f10x_usart.o \
./peri_library/peri_src/stm32f10x_wwdg.o 

C_DEPS += \
./peri_library/peri_src/misc.d \
./peri_library/peri_src/stm32f10x_adc.d \
./peri_library/peri_src/stm32f10x_bkp.d \
./peri_library/peri_src/stm32f10x_can.d \
./peri_library/peri_src/stm32f10x_cec.d \
./peri_library/peri_src/stm32f10x_crc.d \
./peri_library/peri_src/stm32f10x_dac.d \
./peri_library/peri_src/stm32f10x_dbgmcu.d \
./peri_library/peri_src/stm32f10x_dma.d \
./peri_library/peri_src/stm32f10x_exti.d \
./peri_library/peri_src/stm32f10x_flash.d \
./peri_library/peri_src/stm32f10x_fsmc.d \
./peri_library/peri_src/stm32f10x_gpio.d \
./peri_library/peri_src/stm32f10x_i2c.d \
./peri_library/peri_src/stm32f10x_iwdg.d \
./peri_library/peri_src/stm32f10x_pwr.d \
./peri_library/peri_src/stm32f10x_rcc.d \
./peri_library/peri_src/stm32f10x_rtc.d \
./peri_library/peri_src/stm32f10x_sdio.d \
./peri_library/peri_src/stm32f10x_spi.d \
./peri_library/peri_src/stm32f10x_tim.d \
./peri_library/peri_src/stm32f10x_usart.d \
./peri_library/peri_src/stm32f10x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
peri_library/peri_src/%.o: ../peri_library/peri_src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -DSTM32F10X_MD_VL -DUSE_STDPERIPH_DRIVER -DUSE_STM32_DISCOVERY -I"/home/cuil/workspace/arm/stm32_linux/gpio/src" -I"/home/cuil/workspace/arm/stm32_linux/gpio/peri_library/peri_inc" -O0 -g3 -Wall -c -mthumb -mcpu=cortex-m3 -mfix-cortex-m3-ldrd -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


