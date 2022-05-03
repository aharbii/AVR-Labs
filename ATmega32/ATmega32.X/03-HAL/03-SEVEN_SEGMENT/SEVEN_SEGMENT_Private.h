/*
 * File:   SEVEN_SEGMENT_Private.h
 * Author: aharbii
 *
 * Created on May 3, 2022, 6:32 PM
 */

#ifndef SEVEN_SEGMENT_PRIVATE_H
#define SEVEN_SEGMENT_PRIVATE_H

#define DIGITS_COUNT 10

#define COMMON_ANODE 0
#define COMMON_CATHODE 1

#define PORT 0
#define PINS 1

#define NORMAL 0
#define BCD 1
#define MULTIPLEXED 2

extern const u8 segment_map[DIGITS_COUNT];

#define ONE_DIGIT_MAX 9
#define TWO_DIGIT_MAX 99

#define DECIMAL_BASE 10

#define BUFFER_DELAY_MS 1

#endif /* SEVEN_SEGMENT_PRIVATE_H */
