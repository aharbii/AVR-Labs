/*
 * File:   BUTTON_Interface.h
 * Author: aharbii
 *
 * Created on May 2, 2022, 8:43 PM
 */

#ifndef BUTTON_INTERFACE_H
#define BUTTON_INTERFACE_H

#include "StdTypes.h"
#include "DIO_Interface.h"

typedef enum
{
    RELEASED = 0,
    PRESSED = 1
} BUTTON_ClickState_type;

extern void BUTTON_Init(void);

extern BUTTON_ClickState_type BUTTON_ReadClick_PullUp(DIO_Pin_type button);
extern BUTTON_ClickState_type BUTTON_ReadClick_PullDown(DIO_Pin_type button);

extern BUTTON_ClickState_type BUTTON_ReadState_PullUp(DIO_Pin_type button);
extern BUTTON_ClickState_type BUTTON_ReadState_PullDown(DIO_Pin_type button);

extern BUTTON_ClickState_type BUTTON_ReadClick_PullUp_Polling(DIO_Pin_type button);
extern BUTTON_ClickState_type BUTTON_ReadClick_PullDown_Polling(DIO_Pin_type button);

#endif /* BUTTON_INTERFACE_H */
