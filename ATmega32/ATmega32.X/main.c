/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 29, 2022, 8:27 PM
 */

#define F_CPU 8000000
#include <util/delay.h>

#include "MemMap.h"
#include "StdTypes.h"
#include "Utils.h"

#include "DIO_Interface.h"
#include "ADC_Interface.h"

#include "LED_Interface.h"
#include "BUTTON_Interface.h"
#include "SEVEN_SEGMENT_Interface.h"
#include "MOTOR_Interface.h"
#include "LCD_Interface.h"
#include "BUZZER_Interface.h"
#include "KEYPAD_Interface.h"
#include "Sensors_Interface.h"

#include "CAR.h"
#include "STOP_WATCH.h"
#include "LCD_GAMES.h"
#include "CALCULATOR_Interface.h"
#include "NUMERICAL_CONVERTER_Interface.h"
#include "VOLUME_CONTROLLER_Interface.h"
#include "FIRE_FIGHTING_Interface.h"
#include "TEMP_FILTERED_Interface.h"

#define VREF 5

int main(void)
{
    DIO_Init();
    ADC_Init();

    // LED_Init();
    // BUTTON_Init();
    // SEVEN_SEGMENT_Init();
    // MOTOR_Init();
    LCD_Init();
    // BUZZER_Init();
    // KEYPAD_Init();
    SENSORS_Init();

    // CAR_Init();
    // STOP_WATCH_Init();
    // LCD_GAMES_Init();
    // LCD_GAMES_ArrowKilling_Init();
    // LCD_GAMES_MoveMan_Init();
    // CALCULATOR_Init();
    // NUMERICAL_CONVERTER_Init();
    // VOLUME_CONTROLLER_Init();
    // FIRE_FIGHTING_Init();
    // TEMP_Init();
    while (1)
    {
        // VOLUME_CONTROLLER_Runnable();
        LCD_SetCursor(0, 0);
        u16 adc = ADC_Read(CH_0);
        LCD_WriteNumber(adc);
        LCD_SetCursor(1, 0);
        u16 pressure = MPX4115_ReadPressure();
        LCD_WriteNumber(pressure / 10);
        LCD_WriteChar('.');
        LCD_WriteNumber(pressure % 10);
        LCD_WriteString((u8 *)"     ");
    }
}
