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

#define ORDER_BUTTON 2
#define DELAY_LIMIT 50
#define OUTPUT 0xFF
#define INPUT 0x00
#define BUTTON_SHIFT 3
#define LED_COUNT 8

int main(void)
{
    DDRB = INPUT;
    DDRD = INPUT;
    unsigned char led = LED_COUNT;
    while (1)
    {
        led = (!BIT_GET(PIND, 5) << 2) | (!BIT_GET(PIND, 4) << 1) | !BIT_GET(PIND, 3);
        switch (led)
        {
        case 0:
            DDRB = 0x03;
            BIT_SET(PORTB, 0);
            break;
        case 1:
            DDRB = 0x03;
            BIT_SET(PORTB, 1);
            break;
        case 2:
            DDRB = 0x05;
            BIT_SET(PORTB, 0);
            break;
        case 3:
            DDRB = 0x05;
            BIT_SET(PORTB, 2);
            break;
        case 4:
            DDRB = 0x06;
            BIT_SET(PORTB, 1);
            break;
        case 5:
            BIT_SET(PORTB, 2);
            DDRB = 0x06;
            break;
        case 6:
            BIT_SET(PORTB, 2);
            DDRB = 0x0C;
            break;
        case 7:
            BIT_SET(PORTB, 3);
            DDRB = 0x0C;
            break;
        default:
            DDRB = INPUT;
            break;
            
        }
        _delay_ms(DELAY_LIMIT);
        PORTB = 0x00;
        DDRB = INPUT;
        led = LED_COUNT;
    }
    return 0;
}
