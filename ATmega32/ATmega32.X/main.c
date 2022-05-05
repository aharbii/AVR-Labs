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


int main(void)
{
    DIO_Init();

    // LED_Init();
    BUTTON_Init();
    SEVEN_SEGMENT_Init();
    // MOTOR_Init();
    // LCD_Init();

    // CAR_Init();
    STOP_WATCH_Init();
    while (1)
    {
        STOP_WATCH_Runnable();
    }
}
