#include "NUMERICAL_CONVERTER_Interface.h"
#include "NUMERICAL_CONVERTER_Private.h"
#include "NUMERICAL_CONVERTER_Cfg.h"

static NUMERICAL_CONVERTER_Mode_type mode = MENU;
static NUMERICAL_CONVERTER_MenuDirection_type direction = DOWN;
static const u8 binary_str[] = "BIN: ";
static const u8 decimal_str[] = "DEC: ";
static const u8 hex_str[] = "HEX: ";
static const NUMERICAL_CONVERTER_Mode_type modes_array[6] = {BINARY_TO_DECIMAL, BINARY_TO_HEXADECIMAL, DECIMAL_TO_BINARY, DECIMAL_TO_HEXADECIMAL, HEXADECIMAL_TO_BINARY, HEXADECIMAL_TO_DECIMAL};
static const u8 *indicators_array[6][2] = {{binary_str, decimal_str}, {binary_str, hex_str}, {decimal_str, binary_str}, {decimal_str, hex_str}, {hex_str, binary_str}, {hex_str, decimal_str}};
static const u8 modes_menu[6][14] = {
    "BIN to DEC",
    "BIN to HEX",
    "DEC to BIN",
    "DEC to HEX",
    "HEX to BIN",
    "HEX to DEC"};

static const u8 hex_digits[6] = {'A', 'B', 'C', 'D', 'E', 'F'};
static u8 input[10] = "";
static u8 output[10] = "";
static u8 input_idx = 0;
static u8 choice_idx = 0;
static u8 arrow_pos = 1;
static u8 hex_idx = 0;
static u8 hex_pos = 5;
static Bool_t new_operation = true;

void NUMERICAL_CONVERTER_Init(void)
{
    mode = MENU;
    direction = DOWN;
    choice_idx = 0;
    arrow_pos = 1;
    for (u8 i = 0; i < 10; i++)
    {
        input[i] = NULL_CHARACTER;
    }
    output[0] = NULL_CHARACTER;
    new_operation = true;
    hex_idx = 0;
    hex_pos = 5;

    LCD_Clear();
    LCD_SetCursor(0, 0);
    LCD_WriteString((u8 *)"Numerical");
    LCD_SetCursor(1, 1);
    LCD_WriteString((u8 *)"Converter.");
    _delay_ms(200);
    LCD_WriteChar('.');
    _delay_ms(200);
    LCD_WriteChar('.');
    _delay_ms(200);
    LCD_Clear();
    menu_display();
    LCD_SetCursor(arrow_pos, 1);
    LCD_WriteChar(ARROW_ASCII);
}

void NUMERICAL_CONVERTER_Runnable(void)
{
    u8 keypad_entry = KEYPAD_GetEntry();
    if (keypad_entry != DEFAULT_KEY)
    {
        if (keypad_entry == 'C')
        {
            reset();
        }

        switch (mode)
        {
        case MENU:
            menu_manipulation(keypad_entry);
            break;
        case BINARY_TO_DECIMAL:
            if (new_operation)
            {
                new_operation_reset();
            }
            binary_to_decimal_manipulation(keypad_entry);
            break;
        case BINARY_TO_HEXADECIMAL:
            if (new_operation)
            {
                new_operation_reset();
            }
            binary_to_hex_manipulation(keypad_entry);
            break;
        case DECIMAL_TO_BINARY:
            if (new_operation)
            {
                new_operation_reset();
            }
            decimal_to_binary_manipulation(keypad_entry);
            break;
        case DECIMAL_TO_HEXADECIMAL:
            if (new_operation)
            {
                new_operation_reset();
            }
            decimal_to_hex_manipulation(keypad_entry);
            break;
        case HEXADECIMAL_TO_BINARY:
            if (new_operation)
            {
                new_operation_reset();
            }
            hex_to_binary_manipulation(keypad_entry);
            break;
        case HEXADECIMAL_TO_DECIMAL:
            if (new_operation)
            {
                new_operation_reset();
            }
            hex_to_decimal_manipulation(keypad_entry);
            break;
        default:
            break;
        }
    }
}

static void reset(void)
{
    mode = MENU;
    direction = DOWN;
    choice_idx = 0;
    arrow_pos = 1;
    for (u8 i = 0; i < 10; i++)
    {
        input[i] = NULL_CHARACTER;
    }
    output[0] = NULL_CHARACTER;
    new_operation = true;
    hex_idx = 0;
    hex_pos = 5;
    LCD_Clear();
    menu_display();
    LCD_SetCursor(arrow_pos, 1);
    LCD_WriteChar(ARROW_ASCII);
}

static void menu_manipulation(u8 keypad_entry)
{
    if (keypad_entry == '2')
    {
        choice_idx++;
        if (choice_idx == 6)
        {
            choice_idx = 0;
        }
        direction = DOWN;
        menu_display();
    }
    else if (keypad_entry == '8')
    {
        choice_idx--;
        if (choice_idx == 255)
        {
            choice_idx = 5;
        }
        direction = UP;
        menu_display();
    }
    else if (keypad_entry == '=')
    {
        mode = modes_array[choice_idx];
        new_operation_reset();
        new_operation = false;
    }
}

static void new_operation_reset(void)
{
    LCD_Clear();
    LCD_SetCursor(0, 0);
    LCD_WriteString((u8 *)indicators_array[choice_idx][0]);
    LCD_SetCursor(1, 0);
    LCD_WriteString((u8 *)indicators_array[choice_idx][1]);
    LCD_SetCursor(0, 5);
    new_operation = false;
    for (u8 i = 0; i < 10; i++)
    {
        input[i] = NULL_CHARACTER;
    }
    input_idx = 0;
    hex_idx = 0;
    hex_pos = 5;
}

static void menu_display(void)
{
    if (choice_idx == 0)
    {
        switch (direction)
        {
        case DOWN:
            LCD_Clear();
            LCD_SetCursor(0, 0);
            LCD_WriteString((u8 *)"Choose Mode: ");
            LCD_SetCursor(1, 2);
            LCD_WriteString((u8 *)modes_menu[0]);
            LCD_SetCursor(1, 1);
            LCD_WriteChar(ARROW_ASCII);
            arrow_pos = 1;
            break;
        case UP:
            switch (arrow_pos)
            {
            case 1:
                LCD_ClearLocation(1, 1);
                LCD_SetCursor(0, 1);
                LCD_WriteChar(ARROW_ASCII);
                arrow_pos = 0;
                break;
            case 0:
                LCD_Clear();
                LCD_SetCursor(0, 0);
                LCD_WriteString((u8 *)"Choose Mode: ");
                LCD_SetCursor(1, 2);
                LCD_WriteString((u8 *)modes_menu[0]);
                LCD_SetCursor(1, 1);
                LCD_WriteChar(ARROW_ASCII);
                arrow_pos = 1;
                break;
            default:
                break;
            }

            break;
        default:
            break;
        }
    }
    else if (choice_idx == 5)
    {
        switch (direction)
        {
        case DOWN:
            LCD_ClearLocation(0, 1);
            LCD_SetCursor(1, 1);
            LCD_WriteChar(ARROW_ASCII);
            arrow_pos = 1;
            break;
        case UP:
            LCD_Clear();
            LCD_SetCursor(0, 2);
            LCD_WriteString((u8 *)modes_menu[4]);
            LCD_SetCursor(1, 1);
            LCD_WriteChar(ARROW_ASCII);
            arrow_pos = 1;
            LCD_SetCursor(1, 2);
            LCD_WriteString((u8 *)modes_menu[5]);
            break;
        default:
            break;
        }
    }
    else
    {
        switch (direction)
        {
        case DOWN:
            switch (arrow_pos)
            {
            case 1:
                LCD_Clear();
                LCD_SetCursor(0, 2);
                LCD_WriteString((u8 *)modes_menu[choice_idx - 1]);
                LCD_SetCursor(1, 2);
                LCD_WriteString((u8 *)modes_menu[choice_idx]);
                LCD_SetCursor(1, 1);
                LCD_WriteChar(ARROW_ASCII);
                arrow_pos = 1;
                break;
            case 0:
                LCD_ClearLocation(0, 1);
                LCD_SetCursor(1, 1);
                LCD_WriteChar(ARROW_ASCII);
                arrow_pos = 1;
                break;
            default:
                break;
            }
            break;
        case UP:
            switch (arrow_pos)
            {
            case 1:
                LCD_ClearLocation(1, 1);
                LCD_SetCursor(0, 1);
                LCD_WriteChar(ARROW_ASCII);
                arrow_pos = 0;
                break;
            case 0:
                LCD_Clear();
                LCD_SetCursor(0, 2);
                LCD_WriteString((u8 *)modes_menu[choice_idx]);
                LCD_SetCursor(1, 2);
                LCD_WriteString((u8 *)modes_menu[choice_idx + 1]);
                LCD_SetCursor(0, 1);
                LCD_WriteChar(ARROW_ASCII);
                arrow_pos = 0;
                break;
            default:
                break;
            }
            break;
        default:
            break;
        }
    }
}

static void decimal_to_hex_manipulation(u8 keypad_entry)
{
    if (keypad_entry == '=')
    {
        input[input_idx] = NULL_CHARACTER;
        u16 number = string_to_int(input);
        if (number <= 255)
        {
            LCD_SetCursor(1, 5);
            LCD_WriteHex(number);
        }
        else
        {
            LCD_SetCursor(1, 5);
            LCD_WriteString((u8 *)"Invalid");
        }
        new_operation = true;
    }
    else
    {
        get_decimal(keypad_entry);
    }
}

static void decimal_to_binary_manipulation(u8 keypad_entry)
{
    if (keypad_entry == '=')
    {
        input[input_idx] = NULL_CHARACTER;
        u16 number = string_to_int(input);
        if (number <= 255)
        {
            LCD_SetCursor(1, 5);
            LCD_WriteBinary_8B(number);
        }
        else
        {
            LCD_SetCursor(1, 5);
            LCD_WriteString((u8 *)"Invalid");
        }
        new_operation = true;
    }
    else
    {
        get_decimal(keypad_entry);
    }
}

static void binary_to_decimal_manipulation(u8 keypad_entry)
{
    if (keypad_entry == '=')
    {
        input[input_idx] = NULL_CHARACTER;
        u8 number = binary_to_int(input);
        LCD_SetCursor(1, 5);
        LCD_WriteNumber(number);
        new_operation = true;
    }
    else
    {
        ErrorStatus_t status = get_binary(keypad_entry);
        if (status == INDEX_OUT_OF_RANGE)
        {
            LCD_SetCursor(1, 5);
            LCD_WriteString((u8 *)"Invalid");
            new_operation = true;
        }
    }
}

static void hex_to_decimal_manipulation(u8 keypad_entry)
{
    if (keypad_entry == '=')
    {
        input[input_idx] = NULL_CHARACTER;
        u8 number = hex_to_int(input);
        LCD_SetCursor(1, 5);
        LCD_WriteNumber(number);
        new_operation = true;
    }
    else
    {
        ErrorStatus_t status = get_hex(keypad_entry);
        if (status == INDEX_OUT_OF_RANGE)
        {
            LCD_SetCursor(1, 5);
            LCD_WriteString((u8 *)"Invalid");
            new_operation = true;
        }
    }
}

static void hex_to_binary_manipulation(u8 keypad_entry)
{
    if (keypad_entry == '=')
    {
        input[input_idx] = NULL_CHARACTER;
        u8 number = hex_to_int(input);
        LCD_SetCursor(1, 5);
        LCD_WriteBinary_8B(number);
        new_operation = true;
    }
    else
    {
        ErrorStatus_t status = get_hex(keypad_entry);
        if (status == INDEX_OUT_OF_RANGE)
        {
            LCD_SetCursor(1, 5);
            LCD_WriteString((u8 *)"Invalid");
            new_operation = true;
        }
    }
}

static void binary_to_hex_manipulation(u8 keypad_entry)
{
    if (keypad_entry == '=')
    {
        input[input_idx] = NULL_CHARACTER;
        u8 number = binary_to_int(input);
        LCD_SetCursor(1, 5);
        LCD_WriteHex(number);
        new_operation = true;
    }
    else
    {
        ErrorStatus_t status = get_binary(keypad_entry);
        if (status == INDEX_OUT_OF_RANGE)
        {
            LCD_SetCursor(1, 5);
            LCD_WriteString((u8 *)"Invalid");
            new_operation = true;
        }
    }
}

static void get_decimal(u8 digit)
{
    if (digit >= '0' && digit <= '9')
    {
        input[input_idx++] = digit;
    }
    LCD_WriteChar(digit);
}

static ErrorStatus_t get_binary(u8 digit)
{
    if (string_len(input) >= 8)
    {
        return INDEX_OUT_OF_RANGE;
    }

    if (digit == '0' || digit == '1')
    {
        input[input_idx++] = digit;
        LCD_WriteChar(digit);
        return OK;
    }
    return NOT_OK;
}

static ErrorStatus_t get_hex(u8 digit)
{
    if (string_len(input) >= 2)
    {
        return INDEX_OUT_OF_RANGE;
    }

    if (digit >= '0' && digit <= '9')
    {
        input[input_idx++] = digit;
        hex_pos++;
        LCD_WriteChar(digit);
        return OK;
    }
    else if (digit == '/')
    {
        hex_idx = 0;
        LCD_SetCursor(0, hex_pos);
        LCD_WriteChar(hex_digits[hex_idx]);
        return OK;
    }
    else if (digit == '+')
    {
        input[input_idx++] = hex_digits[hex_idx];
        hex_pos++;
        hex_idx = 0;
        return OK;
    }
    else if (digit == '*')
    {
        hex_idx++;
        hex_idx %= 6;
        LCD_SetCursor(0, hex_pos);
        LCD_WriteChar(hex_digits[hex_idx]);
        return OK;
    }
    else if (digit == '-')
    {
        hex_idx--;
        if (hex_idx == 255)
        {
            hex_idx = 5;
        }
        hex_idx %= 6;
        LCD_SetCursor(0, hex_pos);
        LCD_WriteChar(hex_digits[hex_idx]);
        return OK;
    }
    return NOT_OK;
}

static u8 binary_to_int(u8 *str)
{
    u8 base = 1;
    s8 i = string_len(str) - 1;
    u8 number = 0;
    while (i >= 0)
    {
        u8 digit = str[i--] - ASCII_DIGITS_START;
        digit *= base;
        number += digit;
        base *= 2;
    }
    return number;
}

static u8 hex_to_int(u8 *str)
{
    u8 base = 1;
    s8 i = string_len(str) - 1;
    u8 number = 0;
    while (i >= 0)
    {
        u8 digit = 0;
        if (str[i] >= '0' && str[i] <= '9')
        {
            digit = str[i] - ASCII_DIGITS_START;
        }
        else
        {
            digit = str[i] - 'A' + 10;
        }
        digit *= base;
        number += digit;
        base *= 16;
        i--;
    }
    return number;
}

static u8 string_len(u8 *str)
{
    u8 i = 0;
    for (i = 0; str[i] != NULL_CHARACTER; i++)
        ;
    return i;
}

static u16 string_to_int(u8 *str)
{
    u16 number = 0;

    for (u8 i = 0; str[i] != '\0'; i++)
    {
        u8 digit = str[i] - ASCII_DIGITS_START;
        number *= DECIMAL_BASE;
        number += digit;
    }

    return number;
}
