/*
 * File:   SEVEN_SEGMENT_Interface.h
 * Author: aharbii
 *
 * Created on May 3, 2022, 6:32 PM
 */

#ifndef SEVEN_SEGMENT_INTERFACE_H
#define SEVEN_SEGMENT_INTERFACE_H

#include "StdTypes.h"
#include "DIO_Interface.h"

extern void SEVEN_SEGMENT_Init(void);

extern ErrorStatus_t SEVEN_SEGMENT_Display(u8 digit);

#endif /* SEVEN_SEGMENT_INTERFACE_H */
