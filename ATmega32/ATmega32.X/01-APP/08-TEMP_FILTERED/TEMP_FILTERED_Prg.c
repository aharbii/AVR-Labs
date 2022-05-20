#include "TEMP_FILTERED_Interface.h"
#include "TEMP_FILTERED_Private.h"
#include "TEMP_FILTERED_Cfg.h"

static u16 filtered_temp = 0;

void TEMP_Init(void)
{
    filtered_temp = LM35_ReadTemp();
}

void TEMP_Runnable(void)
{
    static u16 counter = 0;
    static u16 sum_temp = 0;
    u16 current_temp = LM35_ReadTemp();

    counter += 1;
    sum_temp += current_temp;

    if (counter == SAMPLES_COUNT)
    {
        filtered_temp = sum_temp / SAMPLES_COUNT;
        counter = 0;
        sum_temp = 0;
    }
}

u16 TEMP_GetFilteredValue(void)
{
    return filtered_temp;
}
