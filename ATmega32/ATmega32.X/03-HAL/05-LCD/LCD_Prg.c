#include "LCD_Interface.h"
#include "LCD_Private.h"
#include "LCD_Cfg.h"

static u8 cell = 0;
static u8 line = 0;

static void DecrementCursor(void)
{
    if (cell == 0)
    {
        if (line == 0)
        {
            line = 1;
            cell = 15;
        }
        else
        {
            line -= 1;
            cell = 15;
        }
    }
    else
    {
        cell -= 1;
    }
}

static void IncrementCursor(void)
{
    if (cell == 15)
    {
        if (line == 1)
        {
            line = 0;
            cell = 0;
        }
        else
        {
            line += 1;
            cell = 0;
        }
    }
    else
    {
        cell += 1;
    }
}

static void ResetCursor(void)
{
    cell = 0;
    line = 0;
}

static void WriteInstruction(u8 instruction)
{
    DIO_WritePin(LCD_RW_PIN, LOW);
    _delay_ms(CMD_TIME_MS);
    DIO_WritePin(LCD_RS_PIN, LOW);
    DIO_WritePort(LCD_PORT, instruction);
    DIO_WritePin(LCD_EN_PIN, HIGH);
    _delay_ms(PULSE_TIME_MS);
    DIO_WritePin(LCD_EN_PIN, LOW);
}

static void WriteData(u8 data)
{
    LCD_SetCursor(line, cell);
    DIO_WritePin(LCD_RW_PIN, LOW);
    _delay_ms(CMD_TIME_MS);
    DIO_WritePin(LCD_RS_PIN, HIGH);
    DIO_WritePort(LCD_PORT, data);
    DIO_WritePin(LCD_EN_PIN, HIGH);
    _delay_ms(PULSE_TIME_MS);
    DIO_WritePin(LCD_EN_PIN, LOW);
    _delay_ms(PULSE_TIME_MS);
    IncrementCursor();
}

static void DeleteCell(void)
{
    DIO_WritePin(LCD_RW_PIN, LOW);
    _delay_ms(CMD_TIME_MS);
    DIO_WritePin(LCD_RS_PIN, HIGH);
    DIO_WritePort(LCD_PORT, 0);
    DIO_WritePin(LCD_EN_PIN, HIGH);
    _delay_ms(PULSE_TIME_MS);
    DIO_WritePin(LCD_EN_PIN, LOW);
    _delay_ms(PULSE_TIME_MS);
}

void LCD_Init(void)
{
    _delay_ms(VDD_RISE_TIME_MS);
    DIO_WritePin(LCD_RW_PIN, LOW);
    _delay_ms(CMD_TIME_MS);
    WriteInstruction(INSTRUCTION_FUNCTION_SET);
    _delay_ms(CMD_TIME_MS);
    WriteInstruction(INSTRUCTION_DISPLAY_ON_CURSOR_OFF);
    _delay_ms(CMD_TIME_MS);
    WriteInstruction(INSTRUCTION_DISPLAY_CLEAR);
    _delay_ms(CLEAR_TIME_MS);
    WriteInstruction(INSTRUCTION_ENTRY_MODE_SET);

    ResetCursor();
}

void LCD_Clear(void)
{
    WriteInstruction(INSTRUCTION_DISPLAY_CLEAR);
    _delay_ms(CLEAR_TIME_MS);

    ResetCursor();
}

void LCD_ClearLast(void)
{
    DecrementCursor();
    LCD_SetCursor(line, cell);
    WriteData(0);
    DecrementCursor();
    LCD_SetCursor(line, cell);
}

ErrorStatus_t LCD_ClearLocation(u8 line, u8 cell)
{
    if (LCD_SetCursor(line, cell) == NOT_OK)
    {
        return NOT_OK;
    }
    DeleteCell();
    return OK;
}

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

ErrorStatus_t LCD_SetCursor(u8 new_line, u8 new_cell)
{
    line = new_line;
    cell = new_cell;
    if (new_line == 0)
    {
        WriteInstruction(FRIST_LINE_FIRST_CELL + new_cell);
    }
    else if (new_line == 1)
    {
        WriteInstruction(SECOND_LINE_FIRST_CELL + new_cell);
    }
    else
    {
        return NOT_OK;
    }

    return OK;
}
void LCD_WriteFloat(f96 number)
{
    s32 int_value = ((s32)number);
    LCD_WriteNumber(int_value);
    s32 float_value = (number - ((s32)number)) * FLOAT_PRECISION;
    LCD_WriteChar('.');
    LCD_WriteNumber(float_value);
}
