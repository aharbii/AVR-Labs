#include "LED_Interface.h"
#include "LED_Private.h"
#include "LED_Cfg.h"

void LED_Init(void)
{
    
}

void LED_OnActiveHigh(DIO_Pin_type led)
{
    DIO_WritePin(led, HIGH);
}

void LED_OffActiveHigh(DIO_Pin_type led)
{
    DIO_WritePin(led, LOW);
}

void LED_OnActiveLow(DIO_Pin_type led)
{
    DIO_WritePin(led, LOW);
}

void LED_OffActiveLow(DIO_Pin_type led)
{
    DIO_WritePin(led, HIGH);
}
