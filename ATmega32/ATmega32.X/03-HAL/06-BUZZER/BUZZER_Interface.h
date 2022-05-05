/* 
 * File:   BUZZER_Interface.h
 * Author: aharbii
 *
 * Created on May 5, 2022, 11:57 PM
 */

#ifndef BUZZER_INTERFACE_H
#define	BUZZER_INTERFACE_H

#include "StdTypes.h"
#include "DIO_Interface.h"

extern void BUZZER_Init(void);

extern void BUZZER_OnActiveHigh(DIO_Pin_type buzzer);
extern void BUZZER_OffActiveHigh(DIO_Pin_type buzzer);

extern void BUZZER_OnActiveLow(DIO_Pin_type buzzer);
extern void BUZZER_OffActiveLow(DIO_Pin_type buzzer);

#endif	/* BUZZER_INTERFACE_H */

