/*
 * File:   CAR.h
 * Author: aharbii
 *
 * Created on May 1, 2022, 12:09 AM
 */

#ifndef CAR_H
#define CAR_H

#include "StdTypes.h"
#include "MOTOR_Interface.h"

#define FRONT_RIGHT M1
#define FRONT_LEFT M2
#define REAR_RIGHT M3
#define REAR_LEFT M4

extern void CAR_Init(void);

extern void CAR_Runnable(void);

/* Private */

void move_forward(void);
void move_backward(void);
void move_left(void);
void move_right(void);

#endif /* CAR_H */
