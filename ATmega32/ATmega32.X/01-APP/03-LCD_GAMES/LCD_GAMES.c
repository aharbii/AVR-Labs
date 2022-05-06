#include "LCD_GAMES.h"

static const u8 alive_man_pattern[8] = {0x0E, 0x0E, 0x04, 0x04, 0x1F, 0x04, 0x0A, 0x0A};
static const u8 dead_man_pattern[8] = {0x0E, 0x0E, 0x15, 0x0E, 0x04, 0x04, 0x0A, 0x11};

static const u8 alive_man = 1;
static const u8 dead_man = 2;

static u8 man_cell = 0;
static u8 man_line = 0;

void LCD_GAMES_Init(void)
{
    LCD_SetPattern(alive_man, alive_man_pattern);
    LCD_SetPattern(dead_man, dead_man_pattern);
    LCD_Clear();
}

void LCD_GAMES_ArrowKilling_Init(void)
{
    LCD_SetCursor(0, 0);
    LCD_WriteChar(alive_man);
    LCD_SetCursor(0, MAX_CELL);
    LCD_WriteChar(alive_man);
}

void LCD_GAMES_ArrowKilling_Runnable(void)
{
    LCD_SetCursor(0, MAX_CELL);
    LCD_WriteChar(alive_man);
    for (u8 i = 1; i < MAX_CELL; i++)
    {
        LCD_SetCursor(0, i);
        LCD_WriteChar(ARROW);
        _delay_ms(ARROW_MOVEMENT_SPEED_MS);
        LCD_ClearLocation(0, i);
    }
    LCD_SetCursor(0, MAX_CELL);
    LCD_WriteChar(dead_man);
    _delay_ms(DEAD_MAN_DISPLAY_TIME_MS);
}

void LCD_GAMES_MoveMan_Init(void)
{
    man_cell = INIT_CELL;
    man_line = INIT_LINE;
    LCD_SetCursor(man_line, man_cell);
    LCD_WriteChar(alive_man);
}

void LCD_GAMES_MoveMan_Runnable(void)
{
    if (BUTTON_ReadClick_PullUp(MOVE_UP_BUTTON) == PRESSED)
    {
        LCD_ClearLocation(man_line, man_cell);
        if (man_line == 0)
        {
            man_line = MAX_LINE;
        }
        else
        {
            man_line -= 1;
        }
        LCD_SetCursor(man_line, man_cell);
        LCD_WriteChar(alive_man);
    }

    if (BUTTON_ReadClick_PullUp(MOVE_DOWN_BUTTON) == PRESSED)
    {
        LCD_ClearLocation(man_line, man_cell);
        if (man_line == MAX_LINE)
        {
            man_line = 0;
        }
        else
        {
            man_line += 1;
        }
        LCD_SetCursor(man_line, man_cell);
        LCD_WriteChar(alive_man);
    }

    if (BUTTON_ReadClick_PullUp(MOVE_RIGHT_BUTTON) == PRESSED)
    {
        LCD_ClearLocation(man_line, man_cell);
        if (man_cell == MAX_CELL)
        {
            man_cell = 0;
        }
        else
        {
            man_cell += 1;
        }
        LCD_SetCursor(man_line, man_cell);
        LCD_WriteChar(alive_man);
    }

    if (BUTTON_ReadClick_PullUp(MOVE_LEFT_BUTTON) == PRESSED)
    {
        LCD_ClearLocation(man_line, man_cell);
        if (man_cell == 0)
        {
            man_cell = MAX_CELL;
        }
        else
        {
            man_cell -= 1;
        }
        LCD_SetCursor(man_line, man_cell);
        LCD_WriteChar(alive_man);
    }
}
