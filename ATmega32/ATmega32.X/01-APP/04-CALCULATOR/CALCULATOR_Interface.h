/*
 * File:   CALCULATOR_Interface.h
 * Author: aharbii
 *
 * Created on May 6, 2022, 10:56 PM
 */

#ifndef CALCULATOR_INTERFACE_H
#define CALCULATOR_INTERFACE_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "LCD_Interface.h"
#include "KEYPAD_Interface.h"

extern void CALCULATOR_Init(void);
extern void CALCULATOR_Runnable(void);

#endif /* CALCULATOR_INTERFACE_H */
