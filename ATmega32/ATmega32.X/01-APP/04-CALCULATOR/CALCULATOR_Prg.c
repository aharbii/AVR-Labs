#include "CALCULATOR_Interface.h"
#include "CALCULATOR_Private.h"
#include "CALCULATOR_Cfg.h"

static const u8 multiplication_pattern[8] = {0x00, 0x00, 0x00, 0x11, 0x0A, 0x04, 0x0A, 0x11};
static const u8 division_pattern[8] = {0x00, 0x00, 0x00, 0x00, 0x04, 0x0E, 0x04, 0x00};

static const u8 multiplication_ascii = 2;
static const u8 division_ascii = 3;

static s16 first_operand = 0;
static s16 second_operand = 0;
static u8 operator= NULL_CHARACTER;
static u8 operation[16] = "";
static u8 answer[16] = "";
static u8 operation_idx = 0;
static u8 pre_key = 0;
static u8 pre_operator = NULL;
static s16 pre_second_operand = 0;

CALCULATOR_Mode_type mode = RESET;

void CALCULATOR_Init(void)
{
    LCD_SetPattern(multiplication_ascii, multiplication_pattern);
    LCD_SetPattern(division_ascii, division_pattern);
    first_operand = 0;
    second_operand = 0;
    operator= NULL_CHARACTER;
    operation[0] = NULL_CHARACTER;
    answer[0] = NULL_CHARACTER;
    operation_idx = 0;
    mode = RESET;

    LCD_WriteString((u8 *)"Calculator.");
    _delay_ms(100);
    LCD_WriteChar('.');
    _delay_ms(100);
    LCD_WriteChar('.');
    _delay_ms(100);
    LCD_Clear();
}

void CALCULATOR_Runnable(void)
{
    u8 keypad_entry = KEYPAD_GetEntry();
    if (keypad_entry != DEFAULT_KEY)
    {
        if (keypad_entry == '=')
        {
            if (mode == SEQUENTIAL_OPERATION)
            {
                if (pre_key == '=')
                {
                    u8 second_operand_str[6] = "";
                    int_to_string(pre_second_operand, second_operand_str);
                    operation_idx = string_len(operation);
                    operation[operation_idx++] = pre_operator;
                    for (u8 i = 0; second_operand_str[i] != NULL_CHARACTER; i++)
                    {
                        operation[operation_idx++] = second_operand_str[i];
                    }
                }
            }
            operation[operation_idx] = NULL_CHARACTER;
            for (u8 i = 0; i < 16; i++)
            {
                LCD_ClearLocation(1, i);
            }
            operation_slicing();
            pre_second_operand = second_operand;
            pre_operator = operator;
            switch (operator)
            {
            case '+':
                addition(first_operand, second_operand);
                break;
            case '-':
                subtraction(first_operand, second_operand);
                break;
            case (u8)multiplication_ascii:
                multiplication(first_operand, second_operand);
                break;
            case (u8)division_ascii:
                division(first_operand, second_operand);
                break;
            default:
                break;
            }
            u8 answer_cell = 16 - string_len(answer);
            LCD_SetCursor(1, answer_cell);
            LCD_WriteString(answer);
            mode = SEQUENTIAL_OPERATION;
        }
        else if (keypad_entry == 'C')
        {
            LCD_Clear();
            calculator_reset();
            mode = RESET;
        }
        else if (char_is_digit(keypad_entry))
        {
            if (mode == RESET)
            {
                operation[operation_idx++] = keypad_entry;
                mode = RUNNING;
            }
            else if (mode == RUNNING)
            {
                operation[operation_idx++] = keypad_entry;
            }
            else if (mode == SEQUENTIAL_OPERATION)
            {
                calculator_reset();
                for (u8 i = 0; i < 16; i++)
                {
                    LCD_ClearLocation(0, i);
                }
                LCD_SetCursor(0, 0);
                operation[operation_idx++] = keypad_entry;
                mode = RUNNING;
            }
            LCD_WriteChar(keypad_entry);
        }
        else if (char_is_operator(keypad_entry))
        {
            if (mode == RESET)
            {
            
            }
            else if (mode == RUNNING)
            {
                operation[operation_idx++] = keypad_entry;
                mode = RUNNING;
                LCD_WriteChar(keypad_entry);
            }
            else if (mode == SEQUENTIAL_OPERATION)
            {
                for (u8 i = 0; i < 16; i++)
                {
                    LCD_ClearLocation(0, i);
                }
                LCD_SetCursor(0, 0);
                LCD_WriteString(operation);
                operation_idx = string_len(operation);
                operation[operation_idx++] = keypad_entry;
                mode = RUNNING;
                LCD_WriteChar(keypad_entry);
            }
            
            
        }
        else
        {
        }
        pre_key = keypad_entry;
    }
}

static void calculator_reset(void)
{
    first_operand = 0;
    second_operand = 0;
    operator= NULL_CHARACTER;
    operation[0] = NULL_CHARACTER;
    answer[0] = NULL_CHARACTER;
    operation_idx = 0;
    mode = RESET;
}

static void operation_slicing(void)
{
    u8 first_number_end_idx = 0;
    u8 second_number_start_idx = 0;
    Bool_t is_processed = false;
    for (u8 i = 0; (operation[i] != NULL_CHARACTER) && (!is_processed); i++)
    {
        if ((i > 0) && char_is_operator(operation[i]))
        {
            first_number_end_idx = i - 1;
            second_number_start_idx = i + 1;
            operator = operation[i];
            is_processed = true;
        }
    }

    if (is_processed == false)
    {
        first_operand = 0;
        second_operand = 0;
        operator = '+';
    }
    first_operand = string_to_int(operation, 0, first_number_end_idx);
    second_operand = string_to_int(operation, second_number_start_idx, string_len(operation) - 1);
}

static Bool_t char_is_digit(char ascii)
{
    if ((ascii >= '0') && (ascii <= '9'))
    {
        return true;
    }
    return false;
}

static Bool_t char_is_operator(char ascii)
{
    if ((ascii == '+') || (ascii == '-') || (ascii == multiplication_ascii) || (ascii == division_ascii))
    {
        return true;
    }
    return false;
}

static void multiplication(s16 first_number, s16 second_number)
{
    s32 ans = (s32)first_number * (s32)second_number;
    int_to_string(ans, answer);
    if ((s32)ans == (s16)ans)
    {
        string_copy(operation, answer);
    }
    else
    {
        string_copy(operation, (u8 *)"0");
    }
}

static void division(s16 first_number, s16 second_number)
{
    if (second_number == 0)
    {
        string_copy(answer, (u8 *)"Math Error");
        string_copy(operation, (u8 *)"0");
        return;
    }

    f96 ans = (f96)first_number / second_number;
    s32 int_value = ((s32)ans);
    u8 int_value_str[5] = "";
    int_to_string(int_value, int_value_str);
    string_copy(answer, int_value_str);
    s32 float_value = (ans - ((s32)ans)) * FLOAT_PRECISION;
    if (float_value != 0)
    {
        u8 float_value_str[6] = "";
        int_to_string(float_value, float_value_str);
        string_concatenate(answer, (u8 *)".");
        string_concatenate(answer, float_value_str);
    }

    s16 rounded_answer = float_round(ans);
    first_operand = rounded_answer;
    u8 rounded_answer_str[6] = "";
    int_to_string(rounded_answer, rounded_answer_str);
    string_copy(operation, rounded_answer_str);
}

static void addition(s16 first_number, s16 second_number)
{
    s32 ans = (s32)first_number + (s32)second_number;
    int_to_string(ans, answer);
    if ((s32)ans == (s16)ans)
    {
        string_copy(operation, answer);
    }
    else
    {
        string_copy(operation, (u8 *)"0");
    }
}

static void subtraction(s16 first_number, s16 second_number)
{
    s32 ans = (s32)first_number - (s32)second_number;
    int_to_string(ans, answer);
    if ((s32)ans == (s16)ans)
    {
        string_copy(operation, answer);
    }
    else
    {
        string_copy(operation, (u8 *)"0");
    }
}

static u8 string_len(u8 *str)
{
    u8 i = 0;
    for (i = 0; str[i] != NULL_CHARACTER; i++)
        ;
    return i;
}

static s16 string_to_int(u8 *str, u8 start, u8 end)
{
    Bool_t is_negative = false;
    u8 idx = start;
    s16 number = 0;

    if (str[idx] == '-')
    {
        is_negative = true;
        idx++;
    }

    for (u8 i = idx; (i <= end) && (str[i] != '\0'); i++)
    {
        u8 digit = str[i] - ASCII_DIGITS_START;
        number *= DECIMAL_BASE;
        number += digit;
    }

    if (is_negative == true)
    {
        number *= -1;
    }

    return number;
}

static void string_copy(u8 *new_str, u8 *source_str)
{
    u8 i = 0;
    for (i = 0; source_str[i] != NULL_CHARACTER; i++)
    {
        new_str[i] = source_str[i];
    }
    new_str[i] = NULL_CHARACTER;
}

static void string_concatenate(u8 *new_str, u8 *source_str)
{
    u8 i = string_len(new_str);
    for (u8 j = 0; source_str[j] != '\0'; j++)
    {
        new_str[i++] = source_str[j];
    }
    new_str[i] = NULL_CHARACTER;
}

static s16 float_round(f96 number)
{
    s16 rounded = (s16)(number + 0.5);
    return rounded;
}

static void int_to_string(s32 number, u8 *str)
{
    u8 buffer[16] = "";
    u8 idx = 0;
    if (number < 0)
    {
        str[idx++] = '-';
        number *= -1;
    }

    if (number == 0)
    {
        str[idx++] = '0';
    }

    s8 i = 0;
    while (number)
    {
        u8 digit = number % DECIMAL_BASE;
        u8 char_digit = digit + ASCII_DIGITS_START;
        buffer[i++] = char_digit;
        number /= DECIMAL_BASE;
    }

    i -= 1;
    while (i >= 0)
    {
        str[idx++] = buffer[i--];
    }
    str[idx] = NULL_CHARACTER;
}