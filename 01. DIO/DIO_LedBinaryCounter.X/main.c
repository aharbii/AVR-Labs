/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 9, 2022, 4:08 AM
 */


#define F_CPU 8000000

#include <util/delay.h>

#include "../../lib/MemMap.h"

int main(void)
{
    DDRB = 0xFF;
    volatile unsigned char counter = 0;
    while (1)
    {
        PORTB = counter++;
        _delay_ms(1000);
    }
    return 0;
}
