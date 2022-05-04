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

#include "LED_Interface.h"
#include "BUTTON_Interface.h"
#include "SEVEN_SEGMENT_Interface.h"
#include "LCD_Interface.h"
#include "MOTOR_Interface.h"

#include "CAR.h"

int main(void)
{
    DIO_Init();

    LED_Init();
    BUTTON_Init();
    SEVEN_SEGMENT_Init();
    MOTOR_Init();
    LCD_Init();

    CAR_Init();
    while (1)
    {
        LCD_WriteNumber(-1270);
        _delay_ms(2000);
        LCD_Clear();

        LCD_WriteChar('Z');
        _delay_ms(2000);
        LCD_Clear();

        LCD_WriteString((u8 *)"I work as an Emb");
        _delay_ms(2000);
        LCD_ClearLast();
        _delay_ms(2000);
        LCD_ClearLocation(0, 3);
        _delay_ms(2000);
        LCD_Clear();

        LCD_SetCursor(0, 10);
        LCD_WriteBinary(5);
        _delay_ms(2000);
        LCD_Clear();

        LCD_WriteBinary_8B(43);
        _delay_ms(2000);
        LCD_Clear();

        LCD_WriteHex(57);
        _delay_ms(2000);
        LCD_Clear();

        LCD_WriteNumber_4D(127);
        _delay_ms(2000);
        LCD_Clear();

        LCD_WriteFloat(3.14159);
        _delay_ms(2000);
        LCD_Clear();
    }
}
