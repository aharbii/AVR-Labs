#include "KEYPAD_Interface.h"
#include "KEYPAD_Cfg.h"

const u8 KeypadKeys[ROWS][COLS] = {{'7', '8', '9', DIVISION_ASCII}, {'4', '5', '6', MULTIPLICATION_ASCII}, {'1', '2', '3', '-'}, {'C', '0', '=', '+'}};

const DIO_Pin_type KeypadOutputPins[ROWS] = {KEYPAD_ROW_1_OUPUT, KEYPAD_ROW_2_OUPUT, KEYPAD_ROW_3_OUPUT, KEYPAD_ROW_4_OUPUT};

const DIO_Pin_type KeypadInputPins[COLS] = {KEYPAD_COLUMN_1_INPUT, KEYPAD_COLUMN_2_INPUT, KEYPAD_COLUMN_3_INPUT, KEYPAD_COLUMN_4_INPUT};