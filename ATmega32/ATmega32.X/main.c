/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 29, 2022, 8:27 PM
 */

#define F_CPU 8000000
#include <util/delay.h>

#include "DIO_Interface.h"
#include "DIO_Cfg.h"
#include "MOTOR_Interface.h"
#include "LCD_Interface.h"
#include "CAR.h"

#include "MemMap.h"
#include "StdTypes.h"
#include "Utils.h"

#define BUTTON1
#define BUTTON2

int main(void)
{
    DIO_Init();
    LCD_Init();
    u16 number = 5;
    while (1)
    {
        LCD_WriteNumber_4D(number);
        _delay_ms(10);
        LCD_Clear();
        number += 43;
    }
}
