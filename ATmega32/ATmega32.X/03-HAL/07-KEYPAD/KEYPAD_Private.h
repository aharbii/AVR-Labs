/*
 * File:   KEYPAD_Private.h
 * Author: aharbii
 *
 * Created on May 6, 2022, 7:26 PM
 */

#ifndef KEYPAD_PRIVATE_H
#define KEYPAD_PRIVATE_H

#include "KEYPAD_Interface.h"
#include "KEYPAD_Cfg.h"

extern const u8 KeypadKeys[ROWS][COLS];
extern const DIO_Pin_type KeypadInputPins[COLS];
extern const DIO_Pin_type KeypadOutputPins[ROWS];

#define PULL_UP 0
#define PULL_DOWN 1

#if KEYPAD_CONNECTION == PULL_UP
#define PRESSED LOW
#elif KEYPAD_CONNECTION == PULL_DOWN
#define PRESSED HIGH
#else
#warning KEYPAD_CONNECTION must be configured in KEYPAD_Cfg.h
#endif

#endif /* KEYPAD_PRIVATE_H */
