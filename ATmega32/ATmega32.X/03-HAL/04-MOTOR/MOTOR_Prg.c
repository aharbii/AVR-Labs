#include "MOTOR_Interface.h"
#include "MOTOR_Private.h"
#include "MOTOR_Cfg.h"

void MOTOR_Init(void)
{
}

void MOTOR_CW(MOTOR_type motor)
{
    DIO_WritePin(MotorPinsArray[motor][IN1], HIGH);
    DIO_WritePin(MotorPinsArray[motor][IN2], LOW);
}

void MOTOR_CCW(MOTOR_type motor)
{
    DIO_WritePin(MotorPinsArray[motor][IN1], LOW);
    DIO_WritePin(MotorPinsArray[motor][IN2], HIGH);
}

void MOTOR_Stop(MOTOR_type motor)
{
    DIO_WritePin(MotorPinsArray[motor][IN1], LOW);
    DIO_WritePin(MotorPinsArray[motor][IN2], LOW);
}
