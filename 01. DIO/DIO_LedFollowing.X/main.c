/*
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 9, 2022, 4:08 AM
 */


#define F_CPU 8000000

#include <util/delay.h>

#define PORTB (*(volatile unsigned char *) 0x38)
#define DDRB (*(volatile unsigned char *) 0x37)
#define PINB (*(volatile unsigned char *) 0x36)

#define LED_COUNT 8
#define BIT_SET(REG, BIT_NUM) ((REG) |= (1 << (BIT_NUM)))
#define BIT_CLEAR(REG, BIT_NUM) ((REG) &= (~(1 << (BIT_NUM))))

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
