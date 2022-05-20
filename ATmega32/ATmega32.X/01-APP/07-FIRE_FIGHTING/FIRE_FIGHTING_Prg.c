#include "FIRE_FIGHTING_Interface.h"
#include "FIRE_FIGHTING_Private.h"
#include "FIRE_FIGHTING_Cfg.h"

static u16 temp_filtered = 0;
static Bool_t smoke_states = false;
static const char *room_statues_arr[TOTAL_STATUS] = {"Fine", "Heat", "Fire"};
static RoomStatus_type room_status = FINE;

void FIRE_FIGHTING_Init(void)
{
    temp_filtered = LM35_ReadTemp();
    if (temp_filtered >= TEMP_THRESHOLD)
    {
        smoke_states = (POT_ReadPercentage() >= SMOKE_THRESHOLD) ? true : false;
        if (smoke_states == true)
        {
            room_status = FIRE;
        }
        else
        {
            room_status = HEAT;
        }
    }
    else
    {
        room_status = FINE;
    }
    LCD_SetCursor(0, 0);
    LCD_WriteString((u8 *)room_statues_arr[room_status]);
    LCD_SetCursor(1, 0);
    LCD_WriteString((u8 *) "Temp: ");
    LCD_SetCursor(1, 6);
    LCD_WriteNumber(temp_filtered / TEMP_PRECISION);
    LCD_WriteChar('.');
    LCD_WriteNumber(temp_filtered % TEMP_PRECISION);
}

void FIRE_FIGHTING_Runnable(void)
{
    filter_temperature();
    update_state();
    display_state();
    led_manipulation();
    buzzer_manipulation();
    fan_manipulation();
}

static void filter_temperature(void)
{
    static u16 counter = 0;
    static u16 sum_temp = 0;
    u16 current_temp = LM35_ReadTemp();

    counter += 1;
    sum_temp += current_temp;

    if (counter == SAMPLES_COUNT)
    {
        temp_filtered = sum_temp / SAMPLES_COUNT;
        counter = 0;
        sum_temp = 0;
    }
}

static void update_state(void)
{
    if (temp_filtered >= TEMP_THRESHOLD)
    {
        smoke_states = (POT_ReadPercentage() >= SMOKE_THRESHOLD) ? true : false;
        if (smoke_states == true)
        {
            room_status = FIRE;
        }
        else
        {
            room_status = HEAT;
        }
    }
    else
    {
        if ((room_status == HEAT) || (room_status == FIRE))
        {
            if (temp_filtered <= (TEMP_THRESHOLD - TEMP_HYSTERESIS_THRESHOLD))
            {
                room_status = FINE;
            }
        }
    }
}

static void display_state(void)
{
    LCD_SetCursor(0, 0);
    LCD_WriteString((u8 *)room_statues_arr[room_status]);
    LCD_SetCursor(1, 0);
    LCD_WriteString((u8 *)"Temp: ");
    LCD_SetCursor(1, 6);
    LCD_WriteNumber(temp_filtered / TEMP_PRECISION);
    LCD_WriteChar('.');
    LCD_WriteNumber(temp_filtered % TEMP_PRECISION);
    LCD_WriteString((u8 *)"   ");
}

static void led_manipulation(void)
{
    if (room_status == HEAT)
    {
        LED_OnActiveHigh(YELLOW_LED);
        LED_OffActiveHigh(RED_LED);
    }
    else if (room_status == FIRE)
    {
        LED_OffActiveHigh(YELLOW_LED);
        LED_OnActiveHigh(RED_LED);
    }
    else 
    {
        LED_OffActiveHigh(YELLOW_LED);
        LED_OffActiveHigh(RED_LED);
    }
}

static void buzzer_manipulation(void)
{
    if (room_status == FIRE)
    {
        BUZZER_OnActiveHigh(BUZZER);
    }
    else
    {
        BUZZER_OffActiveHigh(BUZZER);
    }
}

static void fan_manipulation(void)
{
    if (room_status == FIRE)
    {
        MOTOR_CW(FAN);
    }
    else
    {
        MOTOR_Stop(FAN);
    }
}