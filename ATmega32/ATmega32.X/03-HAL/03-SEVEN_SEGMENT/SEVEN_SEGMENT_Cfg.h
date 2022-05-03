/*
 * File:   SEVEN_SEGMENT_Cfg.h
 * Author: aharbii
 *
 * Created on May 3, 2022, 6:32 PM
 */

#ifndef SEVEN_SEGMENT_CFG_H
#define SEVEN_SEGMENT_CFG_H

#define F_CPU 8000000
#include <util/delay.h>

/*
 * Choose seven segment mode:
 *      - COMMON_CATHODE
 *      - COMMON_ANODE
 */

#define SEVEN_SEGMENT_MODE COMMON_CATHODE

/*
 * Choose seven segment hardware:
 *      - NORMAL
 *      - BCD
 *      - MULTIPLEXED
 */

#define SEVEN_SEGMENT_HARDWARE NORMAL

#if SEVEN_SEGMENT_HARDWARE == BCD
    /* Binary Decoded Seven Segment Configurations */
    #define SEVEN_SEGMENT_A_PIN PINA1
    #define SEVEN_SEGMENT_B_PIN PINA2
    #define SEVEN_SEGMENT_C_PIN PINA3
    #define SEVEN_SEGMENT_D_PIN PINA4

#else

    /*
     * Choose seven segment connection:
     *      - PORT
     *      - PINS
     */

    #define SEVEN_SEGMENT_CONNECTION PINS
    /* Normally Connected Seven Segment Configurations */
    #if SEVEN_SEGMENT_CONNECTION == PORT
        /* Seven Segment Port */
        #define SEVEN_SEGMENT_PORT PA
    #elif SEVEN_SEGMENT_CONNECTION == PINS
        /* Seven Segment pins */
        #define SEVEN_SEGMENT_A_PIN PINA1
        #define SEVEN_SEGMENT_B_PIN PINA2
        #define SEVEN_SEGMENT_C_PIN PINA3
        #define SEVEN_SEGMENT_D_PIN PINA4
        #define SEVEN_SEGMENT_E_PIN PINA5
        #define SEVEN_SEGMENT_F_PIN PINA6
        #define SEVEN_SEGMENT_G_PIN PINA7
        #define SEVEN_SEGMENT_DOT_PIN PINB1
    #else
        #warning The seven segment connection must be configured in SEVEN_SEGMENT_Cfg.h
    #endif /* SEVEN_SEGMENT_CONNECTION */
    
    #if SEVEN_SEGMENT_HARDWARE == NORMAL
        #define SEVEN_SEGMENT_EN_PIN PINA7
    #elif SEVEN_SEGMENT_HARDWARE == MULTIPLEXED
        /* Multiplexed Seven Segment Enable Configurations */
        #define SEGMENT_FIRST_DIGIT_EN_PIN PINC6
        #define SEGMENT_SECOND_DIGIT_EN_PIN PINC7
    #else
        #warning The seven segment hardware must be configured in SEVEN_SEGMENT_Cfg.h
    #endif /* SEVEN_SEGMENT_HARDWARE (NORMAL or MULTIPLEXED) */
#endif /* SEVEN_SEGMENT_HARDWARE */

#endif /* SEVEN_SEGMENT_CFG_H */
