/*
 * File:   NUMERICAL_CONVERTER_Interface.h
 * Author: aharbii
 *
 * Created on May 6, 2022, 10:55 PM
 */

#ifndef NUMERICAL_CONVERTER_INTERFACE_H
#define NUMERICAL_CONVERTER_INTERFACE_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "LCD_Interface.h"
#include "KEYPAD_Interface.h"

extern void NUMERICAL_CONVERTER_Init(void);
extern void NUMERICAL_CONVERTER_Runnable(void);

#endif /* NUMERICAL_CONVERTER_INTERFACE_H */
