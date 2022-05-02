/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 9, 2022, 4:08 AM
 */


#define F_CPU 8000000

#include <util/delay.h>

#include "../../lib/MemMap.h"
#include "../../lib/Utils.h"

#define LED_COUNT 8

typedef unsigned int size_t;

int main(void)
{
    DDRB = 0xFF;
    while (1)
    {
        for (size_t i = 0; i < LED_COUNT; i++)
        {
            BIT_SET(PORTB, i);
            _delay_ms(500);
            BIT_CLEAR(PORTB, i);
        }
    }
    return 0;
}
