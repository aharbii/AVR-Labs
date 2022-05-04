/* 
 * File:   LCD_Cfg.h
 * Author: aharbii
 *
 * Created on May 2, 2022, 1:43 PM
 */

#ifndef LCD_CFG_H
#define	LCD_CFG_H

#define F_CPU 8000000
#include <util/delay.h>

/* 8-Bit LCD Pins Configurations */

#define LCD_PORT PA
#define LCD_RS_PIN PINB0
#define LCD_EN_PIN PINB1
#define LCD_RW_PIN PINB2
#define LCD_DDRAM_BF_PIN PINA7

/*
 * Choose entry mode set:
 *      - ENTRY_MODE_INCREASE_DDRAM_SHIFT_OFF
 *      - ENTRY_MODE_DECREASE_DDRAM_SHIFT_OFF
 *      - ENTRY_MODE_INCREASE_DDRAM_SHIFT_ON
 *      - ENTRY_MODE_DECREASE_DDRAM_SHIFT_ON
 */

#define INSTRUCTION_ENTRY_MODE_SET ENTRY_MODE_INCREASE_DDRAM_SHIFT_OFF

#endif	/* LCD_CFG_H */

