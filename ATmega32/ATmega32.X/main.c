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
#include "STOP_WATCH.h"

#define ARROW (u8)('z' + 4)

u8 alive_man_pattern[8] = {0x0E, 0x0E, 0x04, 0x04, 0x1F, 0x04, 0x0A, 0x0A};
u8 dead_man_pattern[8] = {0x0E, 0x0E, 0x15, 0x0E, 0x04, 0x04, 0x0A, 0x11};

int main(void)
{
    DIO_Init();

    // LED_Init();
    BUTTON_Init();
    // SEVEN_SEGMENT_Init();
    // MOTOR_Init();
    LCD_Init();

    // CAR_Init();
    // STOP_WATCH_Init();
    u8 alive_man = 2;
    u8 dead_man = 3;
    LCD_SetChar(alive_man, alive_man_pattern);
    LCD_SetChar(dead_man, dead_man_pattern);
    LCD_Clear();
    LCD_SetCursor(0, 0);
    LCD_WriteChar(alive_man);
    while (1)
    {
        LCD_SetCursor(0, 15);
        LCD_WriteChar(alive_man);
        for (u8 i = 1; i < 15; i++)
        {
            LCD_SetCursor(0, i);
            LCD_WriteChar(ARROW);
            _delay_ms(50);
            LCD_ClearLocation(0, i);
        }
        LCD_SetCursor(0, 15);
        LCD_WriteChar(dead_man);
        _delay_ms(200);
    }
}
