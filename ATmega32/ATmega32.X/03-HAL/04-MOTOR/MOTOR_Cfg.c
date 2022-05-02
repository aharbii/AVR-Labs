#include "MOTOR_Interface.h"

const DIO_Pin_type MotorPinsArray[TOTAL_MOTORS][MOTOR_PINS] = {
    // Motors IN1    IN2
    /* M1 */ {PINC2, PINC3},
    /* M2 */ {PINA2, PINA3},
    /* M3 */ {PIND2, PIND3},
    /* M4 */ {PINB2, PINB3},
};
