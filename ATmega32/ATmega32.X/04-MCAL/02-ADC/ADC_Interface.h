/* 
 * File:   ADC_Interface.h
 * Author: aharbii
 *
 * Created on May 13, 2022, 9:12 PM
 */

#ifndef ADC_INTERFACE_H
#define	ADC_INTERFACE_H

#include "StdTypes.h"
#include "MemMap.h"
#include "Utils.h"

typedef enum
{
    CH_0,
    CH_1,
    CH_2,
    CH_3,
    CH_4,
    CH_5,
    CH_6,
    CH_7
} ADC_Channel_type;

extern void ADC_Init(void);
extern u16 ADC_Read(ADC_Channel_type channel);

#endif	/* ADC_INTERFACE_H */

