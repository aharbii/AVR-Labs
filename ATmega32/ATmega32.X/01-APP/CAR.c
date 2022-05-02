#include "CAR.h"

void CAR_Init(void)
{
}

void CAR_Runnable(void)
{
    
}

void move_forward(void)
{
    MOTOR_CW(FRONT_RIGHT);
    MOTOR_CW(FRONT_LEFT);
    MOTOR_CW(REAR_RIGHT);
    MOTOR_CW(REAR_LEFT);
}

void move_backward(void)
{
    MOTOR_CCW(FRONT_RIGHT);
    MOTOR_CCW(FRONT_LEFT);
    MOTOR_CCW(REAR_RIGHT);
    MOTOR_CCW(REAR_LEFT);
}

void move_left(void)
{
    MOTOR_CW(FRONT_RIGHT);
    MOTOR_CCW(FRONT_LEFT);
    MOTOR_CW(REAR_RIGHT);
    MOTOR_CCW(REAR_LEFT);
}

void move_right(void)
{
    MOTOR_CCW(FRONT_RIGHT);
    MOTOR_CW(FRONT_LEFT);
    MOTOR_CCW(REAR_RIGHT);
    MOTOR_CW(REAR_LEFT);
}
