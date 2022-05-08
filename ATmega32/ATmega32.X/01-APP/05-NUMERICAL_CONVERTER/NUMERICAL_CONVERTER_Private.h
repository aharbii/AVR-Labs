/*
 * File:   NUMERICAL_CONVERTER_Private.h
 * Author: aharbii
 *
 * Created on May 6, 2022, 10:56 PM
 */

#ifndef NUMERICAL_CONVERTER_PRIVATE_H
#define NUMERICAL_CONVERTER_PRIVATE_H

#define ARROW_ASCII ('z' + 4)

#define ASCII_DIGITS_START '0'
#define NULL_CHARACTER '\0'
#define DECIMAL_BASE 10

typedef enum
{
    MENU,
    BINARY_TO_DECIMAL,
    BINARY_TO_HEXADECIMAL,
    DECIMAL_TO_BINARY,
    DECIMAL_TO_HEXADECIMAL,
    HEXADECIMAL_TO_BINARY,
    HEXADECIMAL_TO_DECIMAL,
} NUMERICAL_CONVERTER_Mode_type;

typedef enum
{
    UP,
    DOWN
} NUMERICAL_CONVERTER_MenuDirection_type;

static u8 string_len(u8 *str);
static u16 string_to_int(u8 *str);
static u8 binary_to_int(u8 *str);
static u8 hex_to_int(u8 *str);
static void menu_display(void);
static void menu_manipulation(u8 keypad_entry);
static void reset(void);
static void get_decimal(u8 digit);
static ErrorStatus_t get_binary(u8 digit);
static ErrorStatus_t get_hex(u8 digit);
static void decimal_to_binary_manipulation(u8 keypad_entry);
static void decimal_to_hex_manipulation(u8 keypad_entry);
static void hex_to_binary_manipulation(u8 keypad_entry);
static void hex_to_decimal_manipulation(u8 keypad_entry);
static void binary_to_hex_manipulation(u8 keypad_entry);
static void binary_to_decimal_manipulation(u8 keypad_entry);
static void new_operation_reset(void);

#endif /* NUMERICAL_CONVERTER_PRIVATE_H */
