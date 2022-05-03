/*
 * File:   LCD_Private.h
 * Author: aharbii
 *
 * Created on May 2, 2022, 1:44 PM
 */

#ifndef LCD_PRIVATE_H
#define LCD_PRIVATE_H

// TODO: LCD instructions from Character LCD Datasheet
/*  */

#define S32_MAX_DIGITS_NUM 11
#define DECIMAL_BASE 10
#define ASCII_CHAR_START '0'
#define NULL_CHAR '\0'
#define S32_MSB 31
#define S32_LSB 0
#define S8_MSB 7
#define S8_LSB 0
#define HEX_DIGITS_NUM 16
#define FLOAT_PRECISION 100
#define FOUR_DIGITS_BASE 1000
#define FOUR_DIGITS_MAX 9999


static void WriteData(u8 data);
static void WriteInstruction(u8 instruction);

#endif /* LCD_PRIVATE_H */
