/* 
 * File:   main.c
 * Author: aharbii
 *
 * Created on April 16, 2022, 5:05 PM
 */

#define F_CPU 8000000
#include <util/delay.h>

#include "../../lib/MemMap.h"
#include "../../lib/Utils.h"
#include "../../lib/StdTypes.h"

#define SEGMENT_FIRST_DIGIT_EN  6
#define SEGMENT_SECOND_DIGIT_EN 7

#define SEGMENT_PORT PORTA

ErrorStatus_t segment_display(u8 num)
{
    const u8 segment_map[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
    if (num >= 100)
    {
        return NOT_OK;
    }
    
    SET_BIT(PORTC, SEGMENT_FIRST_DIGIT_EN);
    CLR_BIT(PORTC, SEGMENT_SECOND_DIGIT_EN);
    u8 first_digit = num % 10;
    PORTA = segment_map[first_digit] << 1;
    _delay_ms(10); 
    
    SET_BIT(PORTC, SEGMENT_SECOND_DIGIT_EN);
    CLR_BIT(PORTC, SEGMENT_FIRST_DIGIT_EN);
    u8 second_digit = num / 10;
    PORTA = segment_map[second_digit] << 1;
    _delay_ms(10);
    return OK;
}

int main(void)
{
    DDRA = OUTPUT_PORT;
    DDRC = OUTPUT_PORT;
    
    while (1)
    {
        for (u8 i = 0; i < 100; i++)
        {
            for (u8 j = 0; j < 20; j++)
            {
                segment_display(i);
            }
            
            
        }
    }
    return 1;
}