/* 
 * File:   VOLUME_CONTROLLER_Interface.h
 * Author: aharbii
 *
 * Created on May 19, 2022, 9:46 PM
 */

#ifndef VOLUME_CONTROLLER_INTERFACE_H
#define	VOLUME_CONTROLLER_INTERFACE_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "LCD_Interface.h"
#include "Sensors_Interface.h"

extern void VOLUME_CONTROLLER_Init(void);
extern void VOLUME_CONTROLLER_Runnable(void);

#endif	/* VOLUME_CONTROLLER_INTERFACE_H */

