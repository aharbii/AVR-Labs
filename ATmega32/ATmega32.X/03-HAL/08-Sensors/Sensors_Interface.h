/* 
 * File:   Sensors_Interface.h
 * Author: aharbii
 * 
 * Created on May 14, 2022, 7:54 PM
 */

#ifndef SENSORS_INTERFACE_H
#define	SENSORS_INTERFACE_H

#include "StdTypes.h"
#include "ADC_Interface.h"

extern void SENSORS_Init(void);

/******************************************************************************
 * FUNCTION: POT_ReadVolt
 * DESCRIPTION:
 *          This function returns the input voltage from a potentiometer voltage
 *          divider circuit in mV.
 *
 * PARAMETERS:
 *      - void
 * 
 * RETURN:
 *      - u16 value represents the input voltage in mV.
 ******************************************************************************/
extern u16 POT_ReadVolt(void);

/******************************************************************************
 * FUNCTION: POT_ReadPercentage
 * DESCRIPTION:
 *          This function returns the used resistance percentage of a 
 *          potentiometer.
 *
 * PARAMETERS:
 *      - void
 *
 * RETURN:
 *      - u8 value represents the percentage of the used resistance of a 
 *        potentiometer [1: 100].
 ******************************************************************************/
extern u8 POT_ReadPercentage(void);

/******************************************************************************
 * FUNCTION: LM35_ReadTemp
 * DESCRIPTION:
 *          This function returns LM35 sensor temperature read in (10 * ˚C).
 *
 * PARAMETERS:
 *      - void
 *
 * RETURN:
 *      - u16 value represents the sensor's temperature in (10 * ˚C).
 ******************************************************************************/
extern u16 LM35_ReadTemp(void);

#endif	/* SENSORS_INTERFACE_H */

