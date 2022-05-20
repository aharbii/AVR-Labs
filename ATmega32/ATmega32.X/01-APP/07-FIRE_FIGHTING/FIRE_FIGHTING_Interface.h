/* 
 * File:   FIRE_FIGHTING_Interface.h
 * Author: aharbii
 *
 * Created on May 19, 2022, 10:32 PM
 */

#ifndef FIRE_FIGHTING_INTERFACE_H
#define	FIRE_FIGHTING_INTERFACE_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "LED_Interface.h"
#include "MOTOR_Interface.h"
#include "LCD_Interface.h"
#include "BUZZER_Interface.h"
#include "Sensors_Interface.h"

extern void FIRE_FIGHTING_Init(void);
extern void FIRE_FIGHTING_Runnable(void);

#endif	/* FIRE_FIGHTING_INTERFACE_H */

