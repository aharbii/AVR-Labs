#include "ADC_Interface.h"
#include "ADC_Private.h"
#include "ADC_Cfg.h"

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
