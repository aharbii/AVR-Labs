/* 
 * File:   LCD_GAMES.h
 * Author: aharbii
 *
 * Created on May 6, 2022, 4:11 PM
 */

#ifndef LCD_GAMES_H
#define	LCD_GAMES_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "LCD_Interface.h"
#include "BUTTON_Interface.h"

/* LCD Dimensions */

#define MAX_LINE 1
#define MAX_CELL 15

extern void LCD_GAMES_Init(void); 

/* Arrow Killing Game */

extern void LCD_GAMES_ArrowKilling_Init(void);
extern void LCD_GAMES_ArrowKilling_Runnable(void);

#define ARROW (u8)('z' + 4)
#define ARROW_MOVEMENT_SPEED_MS 100
#define DEAD_MAN_DISPLAY_TIME_MS 200


/* Moveable Man Game */
extern void LCD_GAMES_MoveMan_Init(void);
extern void LCD_GAMES_MoveMan_Runnable(void);

#define INIT_CELL 7
#define INIT_LINE 0

#define MOVE_UP_BUTTON PIND2
#define MOVE_DOWN_BUTTON PIND3
#define MOVE_RIGHT_BUTTON PIND4
#define MOVE_LEFT_BUTTON PIND5

#endif	/* LCD_GAMES_H */

