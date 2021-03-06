/*
 * File:   LCD_Private.h
 * Author: aharbii
 *
 * Created on May 2, 2022, 1:44 PM
 */

#ifndef LCD_PRIVATE_H
#define LCD_PRIVATE_H

/* LCD Mode 4-Bit and 8-Bit */

#define EIGHT_BIT_MODE 0
#define FOUR_BIT_MODE 1

/* Timing Configurations */

#define PULSE_TIME_MS 2
#define CLEAR_TIME_MS 2
#define VDD_RISE_TIME_MS 50
#define CMD_TIME_MS 1

/* Entry Mode Set */

#define ENTRY_MODE_INCREASE_DDRAM_SHIFT_OFF 0x06
#define ENTRY_MODE_DECREASE_DDRAM_SHIFT_OFF 0x04
#define ENTRY_MODE_INCREASE_DDRAM_SHIFT_ON 0x07
#define ENTRY_MODE_DECREASE_DDRAM_SHIFT_ON 0x05

/* Instructions */

#define INSTRUCTION_FUNCTION_SET_4BIT_INIT 0x02
#define INSTRUCTION_FUNCTION_SET_4BIT 0x28
#define INSTRUCTION_FUNCTION_SET_8BIT 0x38
#define INSTRUCTION_DISPLAY_ON_CURSOR_OFF 0x0C
#define INSTRUCTION_DISPLAY_ON_CURSOR_ON 0x0E
#define INSTRUCTION_DISPLAY_ON_CURSOR_ON_BLINK 0x0F
#define INSTRUCTION_DISPLAY_CLEAR 0x01
#define INSTRUCTION_SET_CGRAM_ADDRESS 0x40
#define INSTRUCTION_SET_DDRAM_ADDRESS 0x80

/* DDRAM Addresses */

#define FIRST_LINE_FIRST_CELL 0x80
#define SECOND_LINE_FIRST_CELL 0xC0

#define ADDRESS_COUNTER_PINS 0x7F

/* CGRAM Macros */

#define CGRAM_SECTIONS_NUM 8
#define CGRAM_INIT_ADD 0x00
#define CGRAM_LOCATIONS_NUM 8

/* Macros */

#define S32_MAX_DIGITS_NUM 11
#define DECIMAL_BASE 10
#define ASCII_CHAR_START '0'
#define NULL_CHAR '\0'
#define S32_MSB 31
#define S32_LSB 0
#define S8_MSB 7
#define S8_LSB 0
#define HEX_DIGITS_NUM 16
#define FLOAT_PRECISION 100000
#define FOUR_DIGITS_BASE 1000
#define FOUR_DIGITS_MAX 9999

/* Private Functions */

typedef enum
{
    PATTERN,
    PRINT
} LCD_WriteMode_type;

static void WriteData(u8 data, LCD_WriteMode_type mode);
static void DeleteCell(void);
static void WriteInstruction(u8 instruction);
static void DecrementCursor(void);
static void IncrementCursor(void);
static void ResetCursor(void);
static void SetNullPattern(const u8 *pattern);

/* LCD Offset */

#define LCD_CELLS_MAX_OFFSET (LCD_CELLS - 1)
#define LCD_LINES_MAX_OFFSET (LCD_LINES - 1)

#endif /* LCD_PRIVATE_H */
