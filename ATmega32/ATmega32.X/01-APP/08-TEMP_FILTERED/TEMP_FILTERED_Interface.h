/* 
 * File:   TEMP_FILTERED_Interface.h
 * Author: aharbii
 *
 * Created on May 20, 2022, 2:15 PM
 */

#ifndef TEMP_FILTERED_INTERFACE_H
#define	TEMP_FILTERED_INTERFACE_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "Sensors_Interface.h"

extern void TEMP_Init(void);
extern void TEMP_Runnable(void);

/******************************************************************************
 * FUNCTION: TEMP_GetFiltered
 * DESCRIPTION:
 *          This function returns LM35 sensor mean filtered temperature in
 *          (10 * ˚C) for each SAMPLES_COUNT reads.
 *
 * PARAMETERS:
 *      - void
 *
 * RETURN:
 *      - u16 value represents the sensor's filtered temperature in (10 * ˚C).
 ******************************************************************************/

extern u16 TEMP_GetFiltered(void);

#endif	/* TEMP_FILTERED_INTERFACE_H */

