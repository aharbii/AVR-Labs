/*
 * File:   MOTOR.h
 * Author: aharbii
 *
 * Created on April 30, 2022, 11:03 PM
 */

#ifndef MOTOR_H
#define MOTOR_H

#include "StdTypes.h"
#include "DIO_Interface.h"

typedef enum
{
    M1,
    M2,
    M3,
    M4,
    TOTAL_MOTORS
} MOTOR_type;

extern void MOTOR_Init(void);
extern void MOTOR_CW(MOTOR_type motor);
extern void MOTOR_CCW(MOTOR_type motor);
extern void MOTOR_Stop(MOTOR_type motor);

/********** Pin Config **********/

#define MOTOR_PINS 2

#define IN1 0
#define IN2 1

#endif /* MOTOR_H */
