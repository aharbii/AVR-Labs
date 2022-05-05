/* 
 * File:   STOP_WATCH.h
 * Author: aharbii
 *
 * Created on May 5, 2022, 9:36 PM
 */

#ifndef STOP_WATCH_H
#define	STOP_WATCH_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "DIO_Interface.h"
#include "BUTTON_Interface.h"
#include "SEVEN_SEGMENT_Interface.h"
#include "BUZZER_Interface.h"

typedef enum
{
    STOP,
    RUN,
    SETUP,
} STOP_WATCH_State_type;

#define RESET_BUTTON PIND2
#define PAUSE_RUN_BUTTON PIND3
#define MODE_BUTTON PIND4

#define BUZZER PINC5


extern void STOP_WATCH_Init(void);
extern void STOP_WATCH_Runnable(void);



#endif	/* STOP_WATCH_H */

