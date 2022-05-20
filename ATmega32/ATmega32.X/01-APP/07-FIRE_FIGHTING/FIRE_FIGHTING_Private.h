/* 
 * File:   FIRE_FIGHTING_Private.h
 * Author: aharbii
 *
 * Created on May 19, 2022, 10:32 PM
 */

#ifndef FIRE_FIGHTING_PRIVATE_H
#define	FIRE_FIGHTING_PRIVATE_H

typedef enum
{
    FINE,
    HEAT,
    FIRE,
    TOTAL_STATUS
} RoomStatus_type;

static void filter_temperature(void);
static void update_state(void);
static void display_state(void);
static void led_manipulation(void);
static void buzzer_manipulation(void);
static void fan_manipulation(void);

#endif	/* FIRE_FIGHTING_PRIVATE_H */

