/*
 * File:   STOP_WATCH.h
 * Author: aharbii
 *
 * Created on May 5, 2022, 9:36 PM
 */

#ifndef STOP_WATCH_H
#define STOP_WATCH_H

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

#define PULL_UP 0
#define PULL_DOWN 1

/*
 * Choose buttons connection mode:
 *      - PULL_UP
 *      - PULL_DOWN
 */

#define BUTTON_CONNECTION PULL_UP

#define BUZZER PINC5

#define ACTIVE_HIGH 0
#define ACTIVE_LOW 1

/*
 * Choose buzzer connection mode:
 *      - ACTIVE_HIGH
 *      - ACTIVE_LOW
 */

#define BUZZER_CONNECTION ACTIVE_HIGH

extern void STOP_WATCH_Init(void);
extern void STOP_WATCH_Runnable(void);


/* Private configurations */

#if BUTTON_CONNECTION == PULL_UP
#define BUTTON_READ_CLICK BUTTON_ReadClick_PullUp
#define BUTTON_READ_STATE BUTTON_ReadState_PullUp
#elif BUTTON_CONNECTION == PULL_DOWN
#define BUTTON_READ_CLICK BUTTON_ReadClick_PullDown
#define BUTTON_READ_STATE BUTTON_ReadState_PullDown
#else
#warning BUTTON_CONNECTION must be configured in STOP_WATCH.h
#endif

#if BUZZER_CONNECTION == ACTIVE_HIGH
#define BUZZER_ON BUZZER_OnActiveHigh
#define BUZZER_OFF BUZZER_OffActiveHigh
#elif BUZZER_CONNECTION == ACTIVE_LOW
#define BUZZER_ON BUZZER_OnActiveLow
#define BUZZER_OFF BUZZER_OffActiveLow
#else
#warning BUZZER_CONNECTION must be configured in STOP_WATCH.h
#endif

#endif /* STOP_WATCH_H */
