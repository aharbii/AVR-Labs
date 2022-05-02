#include "LCD_Interface.h"
#include "LCD_Private.h"

static void WriteInstruction(u8 instruction)
{
    DIO_WritePin(RS, LOW);
    DIO_WritePort(LCD_PORT, instruction); // 8 Bit Mode, 2 Lines LCD
    DIO_WritePin(EN, HIGH);
    _delay_ms(1);
    DIO_WritePin(EN, LOW);
}

static void WriteData(u8 data)
{
    DIO_WritePin(RS, HIGH);
    DIO_WritePort(LCD_PORT, data);
    DIO_WritePin(EN, HIGH);
    _delay_ms(1);
    DIO_WritePin(EN, LOW);
    _delay_ms(1);
}

void LCD_Init(void)
{
    _delay_ms(50);
    WriteInstruction(0x38);
    _delay_ms(1);
    WriteInstruction(0x0C); // 0x0F, 0x0E, 0x0C
    _delay_ms(1);
    WriteInstruction(0x01); // Clear
    _delay_ms(2);
    WriteInstruction(0x06); // Increase DDRAM address, shift off
}

void LCD_Clear(void)
{
    WriteInstruction(0x01);
    _delay_ms(2);
}

// TODO: LCD_ClearLast from Character LCD Datasheet
/*
void LCD_ClearLast(void)
{
}
// TODO: LCD_ClearLocation from Character LCD Datasheet
void LCD_ClearLocation(void)
{
} */

void LCD_WriteNumber(s32 number)
{
    u8 str_number[S32_MAX_DIGITS_NUM] = {0};
    s8 i = 0;
    if (number < 0)
    {
        LCD_WriteChar('-');
        number *= -1;
    }

    if (number == 0)
    {
        LCD_WriteChar('0');
        return;
    }

    while (number)
    {
        u8 digit = number % DECIMAL_BASE;
        u8 char_digit = digit + ASCII_CHAR_START;
        str_number[i++] = char_digit;
        number /= DECIMAL_BASE;
    }

    i -= 1;
    while (i >= 0)
    {
        LCD_WriteChar(str_number[i--]);
    }
}

void LCD_WriteChar(u8 character)
{
    WriteData(character);
}

void LCD_WriteString(u8 *str)
{
    if (str == NULLPTR)
    {
        return;
    }

    for (u8 i = 0; str[i] != NULL_CHAR; i++)
    {
        LCD_WriteChar(str[i]);
    }
}

void LCD_WriteBinary(u32 number)
{
    Bool_t start_printing = false;

    for (s8 i = S32_MSB; i >= S32_LSB; i--)
    {
        if ((!start_printing) && (READ_BIT(number, i) == 1))
        {
            start_printing = true;
        }

        if (start_printing)
        {
            u8 char_digit = READ_BIT(number, i) + ASCII_CHAR_START;
            LCD_WriteChar(char_digit);
        }
    }
}

void LCD_WriteBinary_8B(u8 number)
{
    for (s8 i = S8_MSB; i >= S8_LSB; i--)
    {
        u8 char_digit = READ_BIT(number, i) + ASCII_CHAR_START;
        LCD_WriteChar(char_digit);
    }
}

void LCD_WriteHex(u8 number)
{
    u8 hex_digits[HEX_DIGITS_NUM] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    LCD_WriteString((u8 *)"0x");
    u8 high_nibble_hex = hex_digits[HIGH_NIBBLE_GET(number)];
    LCD_WriteChar(high_nibble_hex);
    u8 low_nibble_hex = hex_digits[LOW_NIBBLE_GET(number)];
    LCD_WriteChar(low_nibble_hex);
}

// FIXME: - when the input is larger than 9999 ?
void LCD_WriteNumber_4D(u16 number)
{
    if (number > FOUR_DIGITS_MAX)
    {
        number = 0;
    }

    u16 base = FOUR_DIGITS_BASE;
    while (base)
    {
        u8 digit = number / base;
        u8 char_digit = digit + ASCII_CHAR_START;
        LCD_WriteChar(char_digit);
        number %= base;
        base /= 10;
    }
}

// TODO: LCD_SetCursor from Character LCD Datasheet
/*
void LCD_SetCursor(u8 line, u8 cell)
{
}
 */
void LCD_WriteFloat(f96 number)
{
    s32 int_value = ((s32)number);
    LCD_WriteNumber(int_value);
    s32 float_value = (number - ((s32)number)) * FLOAT_PRECISION;
    LCD_WriteChar('.');
    LCD_WriteNumber(float_value);
}
