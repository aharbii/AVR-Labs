#include "ADC_Interface.h"
#include "ADC_Private.h"
#include "ADC_Cfg.h"

void ADC_Init(void)
{

    /* Set Prescaler */
    ADCSRA &= ~SCALER_BITS;
    ADC_Scaler_type scaler = SCALER;
    scaler &= SCALER_BITS;
    ADCSRA |= scaler;

    /* Set VREF */
    ADMUX &= ~VREF_BITS;
    ADC_VoltRef_type v_ref = VREF;
    v_ref &= VREF_BITS;
    ADMUX |= v_ref;

    /* Activate Right Adjust Mode */
    CLR_BIT(ADMUX, ADLAR);

    /* Enable ADC */
    SET_BIT(ADCSRA, ADEN);
}

u16 ADC_Read(ADC_Channel_type channel)
{
    ADMUX &= ~CHANNEL_BITS;
    channel &= CHANNEL_BITS;
    ADMUX |= channel;

    SET_BIT(ADCSRA, ADSC);

    while (READ_BIT(ADCSRA, ADSC));
    
    return ADC;
}
