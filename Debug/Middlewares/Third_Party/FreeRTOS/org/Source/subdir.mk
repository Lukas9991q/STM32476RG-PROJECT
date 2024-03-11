################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/org/Source/croutine.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/list.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/queue.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/stream_buffer.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/tasks.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/timers.c 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/org/Source/croutine.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/list.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/queue.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/stream_buffer.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/tasks.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/timers.d 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/org/Source/croutine.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/list.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/queue.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/stream_buffer.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/tasks.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/timers.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/org/Source/%.o Middlewares/Third_Party/FreeRTOS/org/Source/%.su Middlewares/Third_Party/FreeRTOS/org/Source/%.cyclo: ../Middlewares/Third_Party/FreeRTOS/org/Source/%.c Middlewares/Third_Party/FreeRTOS/org/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I"C:/Users/Lukasz/STM32CubeIDE/workspace_1.14.0/BIBLIOTEKA_WYSWIETLACZA/Middlewares/Third_Party/SEGGER/Config" -I"C:/Users/Lukasz/STM32CubeIDE/workspace_1.14.0/BIBLIOTEKA_WYSWIETLACZA/Middlewares/Third_Party/SEGGER/OS" -I"C:/Users/Lukasz/STM32CubeIDE/workspace_1.14.0/BIBLIOTEKA_WYSWIETLACZA/Middlewares/Third_Party/SEGGER/SEGGER" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-org-2f-Source

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-org-2f-Source:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/org/Source/croutine.cyclo ./Middlewares/Third_Party/FreeRTOS/org/Source/croutine.d ./Middlewares/Third_Party/FreeRTOS/org/Source/croutine.o ./Middlewares/Third_Party/FreeRTOS/org/Source/croutine.su ./Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.cyclo ./Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.d ./Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.o ./Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.su ./Middlewares/Third_Party/FreeRTOS/org/Source/list.cyclo ./Middlewares/Third_Party/FreeRTOS/org/Source/list.d ./Middlewares/Third_Party/FreeRTOS/org/Source/list.o ./Middlewares/Third_Party/FreeRTOS/org/Source/list.su ./Middlewares/Third_Party/FreeRTOS/org/Source/queue.cyclo ./Middlewares/Third_Party/FreeRTOS/org/Source/queue.d ./Middlewares/Third_Party/FreeRTOS/org/Source/queue.o ./Middlewares/Third_Party/FreeRTOS/org/Source/queue.su ./Middlewares/Third_Party/FreeRTOS/org/Source/stream_buffer.cyclo ./Middlewares/Third_Party/FreeRTOS/org/Source/stream_buffer.d ./Middlewares/Third_Party/FreeRTOS/org/Source/stream_buffer.o ./Middlewares/Third_Party/FreeRTOS/org/Source/stream_buffer.su ./Middlewares/Third_Party/FreeRTOS/org/Source/tasks.cyclo ./Middlewares/Third_Party/FreeRTOS/org/Source/tasks.d ./Middlewares/Third_Party/FreeRTOS/org/Source/tasks.o ./Middlewares/Third_Party/FreeRTOS/org/Source/tasks.su ./Middlewares/Third_Party/FreeRTOS/org/Source/timers.cyclo ./Middlewares/Third_Party/FreeRTOS/org/Source/timers.d ./Middlewares/Third_Party/FreeRTOS/org/Source/timers.o ./Middlewares/Third_Party/FreeRTOS/org/Source/timers.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-org-2f-Source

