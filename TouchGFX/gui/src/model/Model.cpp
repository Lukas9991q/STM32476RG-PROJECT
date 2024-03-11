#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>

#ifndef SIMULATOR
#include "main.h"
extern "C"
{
    extern TIM_HandleTypeDef htim1;

    #define MIN_ENCODER_VALUE -32768
    #define MAX_ENCODER_VALUE 32767
    #define OUT_MIN_VALUE 0
    #define OUT_MAX_VALUE 1

    long map(long x, long in_min, long in_max, long out_min, long out_max)
    {
        long mapped_value = (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
        if (mapped_value < out_min) {
            return out_min;
        } else if (mapped_value > out_max) {
            return out_max;
        } else {
            return mapped_value;
        }
    }
}
#endif

Model::Model() : modelListener(0), Button_State(false), ENCODER_VAL(0)
{
}

void Model::tick()
{
#ifndef SIMULATOR
    Button_State = HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_5);

    HAL_TIM_Encoder_Start(&htim1, TIM_CHANNEL_ALL);

    uint16_t value = __HAL_TIM_GET_COUNTER(&htim1);

    // Ustawienie ENCODER_VAL na 1 po przekręceniu w prawo
    // i na -1 po przekręceniu w lewo
    if (value > 0) {
        ENCODER_VAL = 1;
        __HAL_TIM_SET_COUNTER(&htim1, 0); // Wyzerowanie licznika TIM1
    } else if (value < 0) {
        ENCODER_VAL = -1;
        __HAL_TIM_SET_COUNTER(&htim1, 0); // Wyzerowanie licznika TIM1
    } else {
        ENCODER_VAL = 0;
    }
#endif

    modelListener->setLight(Button_State);
    modelListener->setADC(ENCODER_VAL);
}
