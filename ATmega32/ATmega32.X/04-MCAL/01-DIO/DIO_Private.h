/* 
 * File:   DIO_Private.h
 * Author: aharbii
 *
 * Created on April 29, 2022, 8:11 PM
 */

#ifndef DIO_PRIVATE_H
#define	DIO_PRIVATE_H

extern const DIO_PinMode_type PinsModeArray[TOTAL_PINS];
static void InitPin(DIO_Pin_type pin, DIO_PinMode_type mode);

#define PORT_PINS_NUM 8

#endif	/* DIO_PRIVATE_H */

