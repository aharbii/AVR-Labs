/*
 * File:   KEYPAD_Interface.h
 * Author: aharbii
 *
 * Created on May 6, 2022, 7:25 PM
 */

#ifndef KEYPAD_INTERFACE_H
#define KEYPAD_INTERFACE_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "DIO_Interface.h"

#define DEFAULT_KEY 'T'

extern void KEYPAD_Init(void);

extern u8 KEYPAD_GetEntry(void);

#endif /* KEYPAD_INTERFACE_H */
