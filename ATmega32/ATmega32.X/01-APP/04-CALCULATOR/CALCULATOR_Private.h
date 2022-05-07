/*
 * File:   CALCULATOR_Private.h
 * Author: aharbii
 *
 * Created on May 6, 2022, 10:57 PM
 */

#ifndef CALCULATOR_PRIVATE_H
#define CALCULATOR_PRIVATE_H

#define ASCII_DIGITS_START '0'
#define NULL_CHARACTER '\0'
#define DECIMAL_BASE 10

#define S16_MAX_BASE 10000
#define S32_MAX_BASE 1000000000
#define FLOAT_PRECISION 100000

static void calculator_reset(void);
static void operation_slicing(void);
static Bool_t char_is_digit(char ascii);
static Bool_t char_is_operator(char ascii);
static void multiplication(s16 first_number, s16 second_number);
static void division(s16 first_number, s16 second_number);
static void addition(s16 first_number, s16 second_number);
static void subtraction(s16 first_number, s16 second_number);
static u8 string_len(u8 *str);
static s16 string_to_int(u8 *str, u8 start, u8 end);
static void string_copy(u8 *new_str, u8 *source_str);
static void string_concatenate(u8 *new_str, u8 *source_str);
static s16 float_round(f96 number);
static void int_to_string(s32 number, u8 *str);
typedef enum
{
    RESET,
    RUNNING,
    SEQUENTIAL_OPERATION
} CALCULATOR_Mode_type;

#endif /* CALCULATOR_PRIVATE_H */
