/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 11, 2022, 12:31 AM
 */


#define F_CPU 8000000
#include <util/delay.h>

#include "../../lib/Utils.h"
#include "../../lib/MemMap.h"

#define LED_COUNT 8
#define TRUE_CLICK 100
#define START 0
#define RIGHT_MOVE_BUTTON 2
#define LEFT_MOVE_BUTTON 3
#define DELAY_LIMIT 300
#define RESET 0
#define OUTPUT 0xFF
#define INPUT 0x00
#define ITERATION 5

typedef unsigned char size_t;

typedef enum direction_t
{
    STOP,
    RIGHT,
    LEFT
} direction_t;

int main(void)
{
    DDRB = OUTPUT;
    DDRD = INPUT;
    unsigned char led = START;
    unsigned long bufferA = RESET;
    unsigned long bufferB = RESET;
    direction_t led_direction = RIGHT;
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
            led_direction = RIGHT;
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
            led_direction = LEFT;
        }
        
        if (led_direction == RIGHT)
        {
            BIT_SET(PORTB, led);
            
            for (size_t i = 0; i < ITERATION; i++)
            {
                _delay_ms(DELAY_LIMIT / ITERATION);
                if (!BIT_GET(PIND, RIGHT_MOVE_BUTTON) || !BIT_GET(PIND, LEFT_MOVE_BUTTON))
                {
                    break;
                }
            }
            
            BIT_CLEAR(PORTB, led);
            led += 1;
            led = ((led == LED_COUNT) ? START : led);
        }
        
        if (led_direction == LEFT)
        {
            BIT_SET(PORTB, led);
            for (size_t i = 0; i < ITERATION; i++)
            {
                _delay_ms(DELAY_LIMIT / ITERATION);
                if (!BIT_GET(PIND, RIGHT_MOVE_BUTTON) || !BIT_GET(PIND, LEFT_MOVE_BUTTON))
                {
                    break;
                }
            }
            BIT_CLEAR(PORTB, led);
            led -= 1;
            led = ((led == UINT8_MAX) ? (LED_COUNT - 1) : led);
        }
        
        bufferA = RESET;
        bufferB = RESET;
        
    }
    return 0;
}
