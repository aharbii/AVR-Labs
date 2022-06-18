#include "ADC_Interface.h"
#include "ADC_Private.h"
#include "ADC_Cfg.h"

static ErrorStatus_t read_flag = OK;

void ADC_Init(void)
{
    /* Set Prescaler */
    ADCSRA &= ~SCALER_BITS;
    ADCSRA |= SCALER;

    /* Set VREF */
    ADMUX &= ~VREF_BITS;
    ADMUX |= VREF;

    /* Activate Right Adjust Mode */
    CLR_BIT(ADMUX, ADLAR);

    /* Enable ADC */
    SET_BIT(ADCSRA, ADEN);
}

u16 ADC_Read(ADC_Channel_type channel)
{
    /* Select ADC Channel */
    ADMUX &= ~CHANNEL_BITS;
    channel &= CHANNEL_BITS;
    ADMUX |= channel;

    SET_BIT(ADCSRA, ADSC);  /* Start Conversion */

    while (READ_BIT(ADCSRA, ADSC)); /* Wait for Conversion */

    return ADC; /* Return ADC Value */
}

void ADC_StartConversion(ADC_Channel_type channel)
{
    if (read_flag == OK)
    {

        /* Select ADC Channel */
        ADMUX &= ~CHANNEL_BITS;
        channel &= CHANNEL_BITS;
        ADMUX |= channel;

        SET_BIT(ADCSRA, ADSC);  /* Start Conversion */
        read_flag = NOT_OK;
    }
}

u16 ADC_GetRead(void)
{
    while (READ_BIT(ADCSRA, ADSC)); /* Wait for Conversion */
    read_flag = OK;
    return ADC; /* Return ADC Value */
}

ErrorStatus_t ADC_ReadPeriodicCheck(u16 *adc)
{
    if (READ_BIT(ADCSRA, ADSC) == 0)
    {
        if (adc == NULLPTR)
        {
            return ACCESS_NULL_POINTER;
        }
        *adc = ADC;
        read_flag = OK;
    }
    return read_flag;
}
