#include "KEYPAD_Interface.h"
#include "KEYPAD_Private.h"
#include "KEYPAD_Cfg.h"

void KEYPAD_Init(void)
{
}

u8 KEYPAD_GetEntry(void)
{
    u8 row = 0;
    u8 col = 0;
    u8 key = DEFAULT_KEY;
    for (row = 0; row < ROWS; row++)
    {
        DIO_WritePin(KeypadOutputPins[row], HIGH);
    }

    for (row = 0; row < ROWS; row++)
    {
        DIO_WritePin(KeypadOutputPins[row], LOW);
        for (col = 0; col < COLS; col++)
        {
            if (BUTTON_READ_CLICK(KeypadInputPins[col]) == PRESSED)
            {
                key = KeypadKeys[row][col];
            }
        }
        DIO_WritePin(KeypadOutputPins[row], HIGH);
    }
    return key;
}
