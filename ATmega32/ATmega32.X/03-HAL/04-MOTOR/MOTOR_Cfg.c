#include "MOTOR_Interface.h"
#include "MOTOR_Private.h"
#include "MOTOR_Cfg.h"

const DIO_Pin_type MotorPinsArray[TOTAL_MOTORS][MOTOR_PINS] = {
    // Motors IN1    IN2
    /* M1 */ {PINC6, PINC7},
    /* M2 */ {PINA6, PINA7},
    /* M3 */ {PIND6, PIND7},
    /* M4 */ {PINB6, PINB7},
};
