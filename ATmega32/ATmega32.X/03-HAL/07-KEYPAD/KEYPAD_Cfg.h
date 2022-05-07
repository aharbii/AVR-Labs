/*
 * File:   KEYPAD_Cfg.h
 * Author: aharbii
 *
 * Created on May 6, 2022, 7:25 PM
 */



#ifndef KEYPAD_CFG_H
#define KEYPAD_CFG_H

#define COLS 4
#define ROWS 4

#define KEYPAD_COLUMN_1_INPUT PINB4
#define KEYPAD_COLUMN_2_INPUT PINB5
#define KEYPAD_COLUMN_3_INPUT PINB6
#define KEYPAD_COLUMN_4_INPUT PINB7

#define KEYPAD_ROW_1_OUPUT PIND2
#define KEYPAD_ROW_2_OUPUT PIND3
#define KEYPAD_ROW_3_OUPUT PIND4
#define KEYPAD_ROW_4_OUPUT PIND5

#define MULTIPLICATION_ASCII 2
#define DIVISION_ASCII 3

/*
 * Choose Keypad Connection Mode 
 *      - PULL_UP
 *      - PULL_DOWN
 */

#define KEYPAD_CONNECTION PULL_UP

#endif /* KEYPAD_CFG_H */
