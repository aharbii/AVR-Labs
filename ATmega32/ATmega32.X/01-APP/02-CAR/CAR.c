#include "CAR.h"

void CAR_Init(void)
{
    stop();
}

void CAR_Runnable(void)
{
    if (BUTTON_ReadClick_PullUp(MOVE_FORWARD_BUTTON) == PRESSED)
    {
        move_forward();
    }

    if (BUTTON_ReadClick_PullUp(MOVE_BACKWARD_BUTTON) == PRESSED)
    {
        stop();
        _delay_ms(STATE_TRANSITION_TIME_MS);
        while (BUTTON_ReadClick_PullUp(MOVE_BACKWARD_BUTTON) == PRESSED)
        {
            move_backward();
        }
        stop();
        _delay_ms(STATE_TRANSITION_TIME_MS);
    }

    if (BUTTON_ReadClick_PullUp(TURN_RIGHT_BUTTON) == PRESSED)
    {
        stop();
        _delay_ms(STATE_TRANSITION_TIME_MS);
        while (BUTTON_ReadClick_PullUp(TURN_RIGHT_BUTTON) == PRESSED)
        {
            move_right();
        }
        stop();
        _delay_ms(STATE_TRANSITION_TIME_MS);
    }

    if (BUTTON_ReadClick_PullUp(TURN_LEFT_BUTTON) == PRESSED)
    {
        stop();
        _delay_ms(STATE_TRANSITION_TIME_MS);
        while (BUTTON_ReadClick_PullUp(TURN_LEFT_BUTTON) == PRESSED)
        {
            move_left();
        }
        stop();
        _delay_ms(STATE_TRANSITION_TIME_MS);
    }
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

void stop(void)
{
    MOTOR_Stop(FRONT_RIGHT);
    MOTOR_Stop(FRONT_LEFT);
    MOTOR_Stop(REAR_RIGHT);
    MOTOR_Stop(REAR_LEFT);
}
