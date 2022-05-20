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
    VREF_AREF     = 0x00,
    VREF_AVCC     = 0x40,
    VREF_INTERNAL = 0xC0
} ADC_VoltRef_type;

typedef enum
{
    ADC_SCALER_2   = 0x01,
    ADC_SCALER_4   = 0x02,
    ADC_SCALER_8   = 0x03,
    ADC_SCALER_16  = 0x04,
    ADC_SCALER_32  = 0x05,
    ADC_SCALER_64  = 0x06,
    ADC_SCALER_128 = 0x07
} ADC_Scaler_type;

/* ADC Control and Status Register ADCSRA Bits */
#define ADEN   7
#define ADSC   6
#define ADATE  5
#define ADIF   4
#define ADIE   3
#define ADPS2  2
#define ADPS1  1
#define ADPS0  0

#define SCALER_BITS 0x07

/* ADC Multiplexer Selection Register Bits */
#define REFS1 7
#define REFS0 6
#define ADLAR 5

#define VREF_BITS    0xC0
#define CHANNEL_BITS 0x1F

#endif	/* ADC_PRIVATE_H */

