/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 11, 2022, 12:31 AM
 */



#define F_CPU 8000000
#include <util/delay.h>

#include "../../lib/MemMap.h"
#include "../../lib/Utils.h"

#define LED_COUNT 8
#define TRUE_CLICK 100
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
        while (!BIT_GET(PIND, ORDER_BUTTON))
        {
            buffer += 1;
            _delay_ms(1);
            if (buffer >= TRUE_CLICK)
            {
                break;
            }
        }
        
        if (buffer >= TRUE_CLICK)
        {
            led = (!BIT_GET(PIND, 5) << 2) | (!BIT_GET(PIND, 4) << 1) | !BIT_GET(PIND, 3);
            BIT_TOGGLE(PORTB, led);
            _delay_ms(DELAY_LIMIT);
        }
        
        led = LED_COUNT;
        buffer = 0;
    }
    return 0;
}