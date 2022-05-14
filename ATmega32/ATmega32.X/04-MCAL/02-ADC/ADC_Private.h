/* 
 * File:   ADC_Private.h
 * Author: aharbii
 *
 * Created on May 13, 2022, 9:12 PM
 */

#ifndef ADC_PRIVATE_H
#define	ADC_PRIVATE_H

typedef enum
{
    VREF_AREF = 0x00,
    VREF_AVCC = 0x40,
    VREF_INTERNAL = 0xC0
} ADC_VoltRef_type;

typedef enum
{
    ADC_SCALER_2 = 0,
    ADC_SCALER_4 = 2,
    ADC_SCALER_8,
    ADC_SCALER_16,
    ADC_SCALER_32,
    ADC_SCALER_64,
    ADC_SCALER_128
} ADC_Scaler_type;

#define ADEN 7
#define ADSC 6

#define REFS1 7
#define REFS0 6
#define ADLAR 5

#define SCALER_BITS 0x07
#define VREF_BITS 0xC0
#define CHANNEL_BITS 0x1F

#endif	/* ADC_PRIVATE_H */

