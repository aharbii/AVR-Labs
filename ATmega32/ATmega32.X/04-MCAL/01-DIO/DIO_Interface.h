/*
 * File:   DIO_Interface.h
 * Author: aharbii
 *
 * Created on April 29, 2022, 8:08 PM
 */

#ifndef DIO_INTERFACE_H
#define DIO_INTERFACE_H

#include "MemMap.h"
#include "StdTypes.h"
#include "Utils.h"

typedef enum
{
	PA = 0,
	PB,
	PC,
	PD
} DIO_Port_type;

typedef enum
{
	OUTPUT,
	INFREE,
	INPULL
} DIO_PinMode_type;

typedef enum
{
	LOW = 0,
	HIGH
} DIO_PinVoltage_type;

typedef enum
{
	/* Port A */
	PINA0 = 0,
	PINA1,
	PINA2,
	PINA3,
	PINA4,
	PINA5,
	PINA6,
	PINA7,

	/* Port B */
	PINB0 = 8,
	PINB1,
	PINB2,
	PINB3,
	PINB4,
	PINB5,
	PINB6,
	PINB7,

	/* Port C */
	PINC0 = 16,
	PINC1,
	PINC2,
	PINC3,
	PINC4,
	PINC5,
	PINC6,
	PINC7,

	/* Port D */
	PIND0 = 24,
	PIND1,
	PIND2,
	PIND3,
	PIND4,
	PIND5,
	PIND6,
	PIND7,

	TOTAL_PINS = 32
} DIO_Pin_type;

extern void DIO_Init(void);

extern void DIO_WritePin(DIO_Pin_type pin, DIO_PinVoltage_type volt);
extern DIO_PinVoltage_type DIO_ReadPin(DIO_Pin_type pin);
extern void DIO_TogglePin(DIO_Pin_type pin);

extern void DIO_WritePort(DIO_Port_type port, u8 value);
extern u8 DIO_ReadPort(DIO_Port_type port);

#endif /* DIO_INTERFACE_H */
