#include "BUTTON_Interface.h"
#include "BUTTON_Private.h"
#include "BUTTON_Cfg.h"

void BUTTON_Init(void)
{
}

BUTTON_ClickState_type BUTTON_ReadClick_PullUp(DIO_Pin_type button)
{
    u8 buffer = 0;
    while (DIO_ReadPin(button) == LOW)
    {
        buffer += 1;
        _delay_ms(BUFFER_DELAY_MS);
        if (buffer == TRUE_CLICK)
        {
            break;
        }
    }
    if (buffer == TRUE_CLICK)
    {
        return PRESSED;
    }

    return RELEASED;
}

BUTTON_ClickState_type BUTTON_ReadClick_PullDown(DIO_Pin_type button)
{
    u8 buffer = 0;
    while (DIO_ReadPin(button) == HIGH)
    {
        buffer += 1;
        _delay_ms(BUFFER_DELAY_MS);
        if (buffer == TRUE_CLICK)
        {
            break;
        }
    }
    if (buffer == TRUE_CLICK)
    {
        return PRESSED;
    }

    return RELEASED;
}

BUTTON_ClickState_type BUTTON_ReadState_PullUp(DIO_Pin_type button)
{
    if (DIO_ReadPin(button) == LOW)
    {
        return PRESSED;
    }
    return RELEASED;
}

BUTTON_ClickState_type BUTTON_ReadState_PullDown(DIO_Pin_type button)
{
    if (DIO_ReadPin(button) == HIGH)
    {
        return PRESSED;
    }
    return RELEASED;
}

BUTTON_ClickState_type BUTTON_ReadClick_PullUp_Polling(DIO_Pin_type button)
{
    u8 buffer = 0;
    while (DIO_ReadPin(button) == LOW)
    {
        buffer += ((buffer == TRUE_CLICK) ? 0 : 1);
        _delay_ms(BUFFER_DELAY_MS);
    }

    if (buffer == TRUE_CLICK)
    {
        return PRESSED;
    }

    return RELEASED;
}

BUTTON_ClickState_type BUTTON_ReadClick_PullDown_Polling(DIO_Pin_type button)
{
    u8 buffer = 0;
    while (DIO_ReadPin(button) == HIGH)
    {
        buffer += ((buffer == TRUE_CLICK) ? 0 : 1);
        _delay_ms(BUFFER_DELAY_MS);
    }

    if (buffer == TRUE_CLICK)
    {
        return PRESSED;
    }

    return RELEASED;
}