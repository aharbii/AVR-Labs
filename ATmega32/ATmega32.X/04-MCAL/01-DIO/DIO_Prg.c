#include "DIO_Interface.h"
#include "DIO_Private.h"

void DIO_Init(void)
{
    for (DIO_Pin_type i = PINA0; i < TOTAL_PINS; i++)
    {
        InitPin(i, PinsModeArray[i]);
    }
}

static void InitPin(DIO_Pin_type pin, DIO_PinMode_type mode)
{
    u8 port = pin/8;
    u8 pin_num = pin%8;
    switch(mode)
    {
        case OUTPUT:
            switch(port)
            {
                case PA:
                    SET_BIT(DDRA, pin_num);
                    CLR_BIT(PORTA, pin_num);
                    break;
                case PB:
                    SET_BIT(DDRB, pin_num);
                    CLR_BIT(PORTD, pin_num);
                    break;
                case PC:
                    SET_BIT(DDRC, pin_num);
                    CLR_BIT(PORTC, pin_num);
                    break;
                case PD:
                    SET_BIT(DDRD, pin_num);
                    CLR_BIT(PORTD, pin_num);
                    break;
            }
            break;
        case INFREE:
            switch(port)
            {
                case PA:
                    CLR_BIT(DDRA, pin_num);
                    CLR_BIT(PORTA, pin_num);
                    break;
                case PB:
                    CLR_BIT(DDRB, pin_num);
                    CLR_BIT(PORTD, pin_num);
                    break;
                case PC:
                    CLR_BIT(DDRC, pin_num);
                    CLR_BIT(PORTC, pin_num);
                    break;
                case PD:
                    CLR_BIT(DDRD, pin_num);
                    CLR_BIT(PORTD, pin_num);
                    break;
            }
            break;
        case INPULL:
            switch(port)
            {
                case PA:
                    CLR_BIT(DDRA, pin_num);
                    SET_BIT(PORTA, pin_num);
                    break;
                case PB:
                    CLR_BIT(DDRB, pin_num);
                    SET_BIT(PORTD, pin_num);
                    break;
                case PC:
                    CLR_BIT(DDRC, pin_num);
                    SET_BIT(PORTC, pin_num);
                    break;
                case PD:
                    CLR_BIT(DDRD, pin_num);
                    SET_BIT(PORTD, pin_num);
                    break;
            }
            break;
    }
}

void DIO_WritePin(DIO_Pin_type pin, DIO_PinVoltage_type volt)
{
    u8 port = pin/8;
    u8 pin_num = pin%8;
    if (volt == HIGH)
    {
        switch(port)
        {
            case PA:
                SET_BIT(PORTA, pin_num);
                break;
            case PB:
                SET_BIT(PORTB, pin_num);
                break;
            case PC:
                SET_BIT(PORTC, pin_num);
                break;
            case PD:
                SET_BIT(PORTD, pin_num);
                break;
        }
    }
    else if (volt == LOW)
    {
        switch(port)
        {
            case PA:
                CLR_BIT(PORTA, pin_num);
                break;
            case PB:
                CLR_BIT(PORTB, pin_num);
                break;
            case PC:
                CLR_BIT(PORTC, pin_num);
                break;
            case PD:
                CLR_BIT(PORTD, pin_num);
                break;
        }
    }
    
}

DIO_PinVoltage_type DIO_ReadPin(DIO_Pin_type pin)
{
    u8 port = pin/8;
    u8 pin_num = pin%8;
    DIO_PinVoltage_type voltage = LOW;
    switch(port)
    {
        case PA:
            voltage = READ_BIT(PINA, pin_num);
            break;
        case PB:
            voltage = READ_BIT(PINB, pin_num);
            break;
        case PC:
            voltage = READ_BIT(PINC, pin_num);
            break;
        case PD:
            voltage = READ_BIT(PIND, pin_num);
            break;
    }
    return voltage;
}

void DIO_TogglePin(DIO_Pin_type pin)
{
    u8 port = pin/8;
    u8 pin_num = pin%8;
    switch(port)
    {
        case PA:
            TOG_BIT(PORTA, pin_num);
            break;
        case PB:
            TOG_BIT(PORTB, pin_num);
            break;
        case PC:
            TOG_BIT(PORTC, pin_num);
            break;
        case PD:
            TOG_BIT(PORTD, pin_num);
            break;
    }
}

void DIO_WritePort(DIO_Port_type port, u8 value)
{
    switch(port)
    {
        case PA:
            PORTA = value;
            break;
        case PB:
            PORTB = value;
            break;
        case PC:
            PORTC = value;
            break;
        case PD:
            PORTD = value;
            break;
    }
}

u8 DIO_ReadPort(DIO_Port_type port)
{
    u8 value = 0;
    switch(port)
    {
        case PA:
            value = PORTA;
            break;
        case PB:
            value = PORTB;
            break;
        case PC:
            value = PORTC;
            break;
        case PD:
            value = PORTD;
            break;
    }
    return value;
}
