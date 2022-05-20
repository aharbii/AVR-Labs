#include "VOLUME_CONTROLLER_Interface.h"
#include "VOLUME_CONTROLLER_Private.h"
#include "VOLUME_CONTROLLER_Cfg.h"

static const u8 volume_label_pattern[8] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
static const u8 volume_label = 1;

static u8 pre_level = 0;

void VOLUME_CONTROLLER_Init(void)
{
    LCD_SetPattern(volume_label, volume_label_pattern);
    LCD_Clear();
}

void VOLUME_CONTROLLER_Runnable(void)
{
    u8 percentage = POT_ReadPercentage();
    u8 volume_level = percentage / 10;
    while (volume_level > pre_level)
    {
        LCD_WriteChar(volume_label);
        pre_level += 1;
    }

    while (volume_level < pre_level)
    {
        LCD_ClearLast();
        pre_level -= 1;
    }
    
}

