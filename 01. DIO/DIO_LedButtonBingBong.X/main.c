/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 11, 2022, 12:31 AM
 */


#include "BIT_MATH.h"

#define F_CPU 8000000
#include <util/delay.h>

#define PORTB (*((volatile unsigned char *) 0x38))
#define DDRB (*((volatile unsigned char *) 0x37))
#define PINB (*((volatile unsigned char *) 0x36))

#define PORTD (*((volatile unsigned char *) 0x32))
#define DDRD (*((volatile unsigned char *) 0x31))
#define PIND (*((volatile unsigned char *) 0x30))

#define LED_COUNT 8
#define TRUE_CLICK 100
#define START 0xFF
#define RIGHT_MOVE_BUTTON 2
#define LEFT_MOVE_BUTTON 3
#define DELAY_LIMIT 300
#define ITERATION 5

typedef unsigned char size_t;

int main(void)
{
    DDRB = 0xFF;
    DDRD = 0x00;
    unsigned char led = START;
    unsigned long bufferA = 0;
    unsigned long bufferB = 0;
    while (1)
    {
        while (!BIT_GET(PIND, RIGHT_MOVE_BUTTON))
        {
            bufferA += 1;
            _delay_ms(1);
            if (bufferA >= TRUE_CLICK)
            {
                break;
            }
        }
        if (bufferA >= TRUE_CLICK)
        {
            BIT_CLEAR(PORTB, led);
            led += 1;
            led = ((led == LED_COUNT) ? 0 : led);
            BIT_SET(PORTB, led);
            for (size_t i = 0; i < ITERATION; i++)
            {
                _delay_ms(DELAY_LIMIT / ITERATION);
                if (!BIT_GET(PIND, RIGHT_MOVE_BUTTON) || !BIT_GET(PIND, LEFT_MOVE_BUTTON))
                {
                    continue;
                }
            }
        }
        
        while(!BIT_GET(PIND, LEFT_MOVE_BUTTON))
        {
            bufferB += 1;
            _delay_ms(1);
            if (bufferB >= TRUE_CLICK)
            {
                break;
            }
        }
        if (bufferB >= TRUE_CLICK)
        {
            BIT_CLEAR(PORTB, led);
            led -= 1;
            led = ((led == START) ? (LED_COUNT - 1) : led);
            BIT_SET(PORTB, led);
            for (size_t i = 0; i < ITERATION; i++)
            {
                _delay_ms(DELAY_LIMIT / ITERATION);
                if (!BIT_GET(PIND, RIGHT_MOVE_BUTTON) || !BIT_GET(PIND, LEFT_MOVE_BUTTON))
                {
                    continue;
                }
            }
        }
        
        bufferA = 0;
        bufferB = 0;
    }
    return 0;
}
