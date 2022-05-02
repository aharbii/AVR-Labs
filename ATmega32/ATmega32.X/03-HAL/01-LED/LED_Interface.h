/* 
 * File:   LED_Interface.h
 * Author: aharbii
 *
 * Created on May 2, 2022, 6:22 PM
 */

#ifndef LED_INTERFACE_H
#define	LED_INTERFACE_H

#include "StdTypes.h"
#include "DIO_Interface.h"

extern void LED_OnActiveHigh(DIO_Pin_type led);
extern void LED_OffActiveHigh(DIO_Pin_type led);

extern void LED_OnActiveLow(DIO_Pin_type led);
extern void LED_OffActiveHigh(DIO_Pin_type led);

#endif	/* LED_INTERFACE_H */

