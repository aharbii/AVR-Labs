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
#define TOGGLE_MOVE_BUTTON 2
#define DELAY_LIMIT 500
#define RESET 0

typedef enum direction_t
{
    STOP,
    RIGHT,
    LEFT
} direction_t;

int main(void)
{
    DDRB = 0xFF;
    DDRD = 0x00;
    unsigned char led = START;
    unsigned long buffer = 0;
    direction_t led_direction = STOP;
    while (1)
    {
        while (BIT_GET(PIND, TOGGLE_MOVE_BUTTON))
        {
            buffer += ((buffer == TRUE_CLICK) ? 0 : 1);
        }
        
        if (buffer == TRUE_CLICK)
        {
            led_direction = ((!led_direction || led_direction == LEFT) ? RIGHT: LEFT);
        }
        
        if (led_direction == RIGHT)
        {
            BIT_SET(PORTB, led);
            _delay_ms(DELAY_LIMIT);
            BIT_CLEAR(PORTB, led);
            led += 1;
            led = ((led == LED_COUNT) ? 0 : led);
        }
        
        if (led_direction == LEFT)
        {
            BIT_SET(PORTB, led);
            _delay_ms(DELAY_LIMIT);
            BIT_CLEAR(PORTB, led);
            led -= 1;
            led = ((led == UINT8_MAX) ? (LED_COUNT - 1) : led);
        }
        
        buffer = 0;
        
    }
    return 0;
}
