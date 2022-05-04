/*
 * File:   LCD_Interface.h
 * Author: aharbii
 *
 * Created on May 1, 2022, 10:06 PM
 */

#ifndef LCD_INTERFACE_H
#define LCD_INTERFACE_H

#include "StdTypes.h"
#include "DIO_Interface.h"

extern void LCD_Init(void);
extern void LCD_Clear(void);
extern void LCD_ClearLast(void);
extern ErrorStatus_t LCD_ClearLocation(u8 line, u8 cell);
extern ErrorStatus_t LCD_SetCursor(u8 line, u8 cell);

extern void LCD_WriteNumber(s32 number);
extern void LCD_WriteChar(u8 character);
extern void LCD_WriteString(u8 *str);
extern void LCD_WriteBinary(u32 number);
extern void LCD_WriteBinary_8B(u8 number);
extern void LCD_WriteHex(u8 number);
extern void LCD_WriteNumber_4D(u16 number);
extern void LCD_WriteFloat(f96 number);

#endif /* LCD_INTERFACE_H */
