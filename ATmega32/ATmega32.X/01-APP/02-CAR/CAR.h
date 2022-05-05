/*
 * File:   CAR.h
 * Author: aharbii
 *
 * Created on May 1, 2022, 12:09 AM
 */

#ifndef CAR_H
#define CAR_H

#define F_CPU 8000000
#include <util/delay.h>

#include "StdTypes.h"
#include "MOTOR_Interface.h"
#include "BUTTON_Interface.h"

#define FRONT_RIGHT M1
#define FRONT_LEFT M2
#define REAR_RIGHT M3
#define REAR_LEFT M4

#define MOVE_FORWARD_BUTTON PINB0
#define MOVE_BACKWARD_BUTTON PINB1
#define TURN_RIGHT_BUTTON PINB2
#define TURN_LEFT_BUTTON PINB3

#define STATE_TRANSITION_TIME_MS 50

extern void CAR_Init(void);

extern void CAR_Runnable(void);
extern void stop(void);

/* Private */

void move_forward(void);
void move_backward(void);
void move_left(void);
void move_right(void);

#endif /* CAR_H */
