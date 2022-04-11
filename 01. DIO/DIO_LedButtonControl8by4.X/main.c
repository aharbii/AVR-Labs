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
#define TRUE_CLICK 280
#define START 0
#define ORDER_BUTTON 2
#define DELAY_LIMIT 50
#define OUTPUT 0xFF
#define INPUT 0x00
#define BUTTON_SHIFT 3
#define RESET 0

int main(void)
{
    DDRB = OUTPUT;
    DDRD = INPUT;
    unsigned long buffer = RESET;
    unsigned char led = LED_COUNT;
    while (1)
    {
        while (BIT_GET(PIND, ORDER_BUTTON))
        {
            buffer += 1;
            if (buffer >= TRUE_CLICK)
            {
                break;
            }
        }
        
        if (buffer >= TRUE_CLICK)
        {
            led = (PIND & ~(1 << ORDER_BUTTON)) >> BUTTON_SHIFT;
            BIT_TOGGLE(PORTB, led);
            _delay_ms(DELAY_LIMIT);
        }
        
        led = LED_COUNT;
        buffer = 0;
    }
    return 0;
}
