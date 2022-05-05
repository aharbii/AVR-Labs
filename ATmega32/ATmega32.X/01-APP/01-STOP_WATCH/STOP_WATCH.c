#include "STOP_WATCH.h"
#include "DIO_Cfg.h"

static STOP_WATCH_State_type state = STOP;
static u8 start_time = 30;
static u8 time = 30;

static void run(void);
static void pause_resume(void);
static void reset(void);
static void change_mode(void);
static void end(void);

void STOP_WATCH_Init(void)
{
    reset();
    BUZZER_OffActiveHigh(BUZZER);
    SEVEN_SEGMENT_Display(time);
}

void STOP_WATCH_Runnable(void)
{
    if (BUTTON_ReadClick_PullUp(MODE_BUTTON) == PRESSED)
    {
        change_mode();
    }

    if (BUTTON_ReadClick_PullUp(RESET_BUTTON) == PRESSED)
    {
        reset();
    }

    if (BUTTON_ReadClick_PullUp(PAUSE_RUN_BUTTON) == PRESSED)
    {
        pause_resume();   
    }

    if (state == RUN)
    {
        run();
    }
        
    SEVEN_SEGMENT_Display(time);
}

static void run(void)
{
    
    for (u16 i = 0; i < 350; i++)
    {
        SEVEN_SEGMENT_Display(time);
        if (DIO_ReadPin(PAUSE_RUN_BUTTON) == LOW || DIO_ReadPin(RESET_BUTTON) == LOW || DIO_ReadPin(MODE_BUTTON) == LOW)
        {
            break;
            time += 1;
        }
    }
    time -= 1;
    if (time == 0xFF)
    {
        end();
    }   
}

static void end(void)
{
    BUZZER_OnActiveHigh(BUZZER);
    time = start_time;
    state = STOP;
    for (u16 i = 0; i < 100; i++)
    {
        SEVEN_SEGMENT_Display(time);
        _delay_ms(1);
    }
    BUZZER_OffActiveHigh(BUZZER);
}

static void pause_resume(void)
{
    if (state == RUN)
    {
        state = STOP;
    }
    else if (state == STOP)
    {
        state = RUN;
    }
    else if (state == SETUP)
    {
        start_time += 1;
        if (start_time >= 100)
        {
            start_time = 0;
        }
        time = start_time;
    }
}

static void reset(void)
{
    if (state == RUN || state == STOP)
    {
        time = start_time;
        state = STOP;
    }
    else if (state == SETUP)
    {
        start_time += 10;
        if (start_time >= 100)
        {
            start_time = 0;
        }
        time = start_time;
    }
}

static void change_mode(void)
{
    if (state == RUN || state == STOP)
     {
         start_time = time;
         state = SETUP;
     }
     else if (state == SETUP)
     {
         state = STOP;
     }
}