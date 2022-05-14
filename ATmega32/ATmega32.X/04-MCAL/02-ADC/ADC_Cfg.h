/* 
 * File:   ADC_Cfg.h
 * Author: aharbii
 *
 * Created on May 13, 2022, 9:11 PM
 */

#ifndef ADC_CFG_H
#define	ADC_CFG_H

/*
 * Choose scaler mode:
 *      - ADC_SCALER_2
 *      - ADC_SCALER_4
 *      - ADC_SCALER_8
 *      - ADC_SCALER_16
 *      - ADC_SCALER_32
 *      - ADC_SCALER_64
 *      - ADC_SCALER_128
 */

#define SCALER ADC_SCALER_64

/*
 * Choose v_ref mode:
 *      - VREF_AREF
 *      - VREF_AVCC
 *      - VREF_INTERNAL
 */
#define VREF VREF_AVCC

#endif	/* ADC_CFG_H */

