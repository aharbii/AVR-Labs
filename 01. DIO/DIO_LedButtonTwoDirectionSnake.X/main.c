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
#define TRUE_CLICK 300
#define START 0
#define RIGHT_MOVE_BUTTON 2
#define LEFT_MOVE_BUTTON 3
#define DELAY_LIMIT 500
#define RESET 0
#define OUTPUT 0xFF
#define INPUT 0x00

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
        while (BIT_GET(PIND, RIGHT_MOVE_BUTTON))
        {
            bufferA += 1;
            if (bufferA >= TRUE_CLICK)
            {
                break;
            }
        }
        
        if (bufferA >= TRUE_CLICK)
        {
            led_direction = RIGHT;
        }
        
        
        while(BIT_GET(PIND, LEFT_MOVE_BUTTON))
        {
            bufferB += 1;
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
            _delay_ms(DELAY_LIMIT);
            BIT_CLEAR(PORTB, led);
            led += 1;
            led = ((led == LED_COUNT) ? START : led);
        }
        
        if (led_direction == LEFT)
        {
            BIT_SET(PORTB, led);
            _delay_ms(DELAY_LIMIT);
            BIT_CLEAR(PORTB, led);
            led -= 1;
            led = ((led == UINT8_MAX) ? (LED_COUNT - 1) : led);
        }
        
        bufferA = RESET;
        bufferB = RESET;
        
    }
    return 0;
}
