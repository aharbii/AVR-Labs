/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 9, 2022, 4:08 AM
 */


#define F_CPU 8000000

#include <util/delay.h>

#include "../../lib/MemMap.h"

typedef unsigned int size_t;

int main(void)
{
    DDRB = 0xFF;
    while (1)
    {
        for (size_t i = 0; i < 5; i++)
        {
            PORTB = 0xFF;
            _delay_ms(1000);
            PORTB = 0x00;
            _delay_ms(1000);
        }
        for (size_t i = 0; i < 5; i++)
        {
            PORTB = 0x0F;
            _delay_ms(1000);
            PORTB = 0xF0;
            _delay_ms(1000);
        }
        for (size_t i = 0; i < 5; i++)
        {
            
            PORTB = 0x33;
            _delay_ms(1000);
            PORTB = 0xCC;
            _delay_ms(1000);
        }
        for (size_t i = 0; i < 5; i++)
        {
            
            PORTB = 0x55;
            _delay_ms(1000);
            PORTB = 0xAA;
            _delay_ms(1000);
        }
    }
    return 0;
}
