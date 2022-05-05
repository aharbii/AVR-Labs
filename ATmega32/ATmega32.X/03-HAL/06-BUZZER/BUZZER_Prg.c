#include "BUZZER_Interface.h"
#include "BUZZER_Private.h"
#include "BUZZER_Cfg.h"

void BUZZER_Init(void)
{
}

void BUZZER_OnActiveHigh(DIO_Pin_type buzzer)
{
    DIO_WritePin(buzzer, HIGH);
}

void BUZZER_OffActiveHigh(DIO_Pin_type buzzer)
{
    DIO_WritePin(buzzer, LOW);
}

void BUZZER_OnActiveLow(DIO_Pin_type buzzer)
{
    DIO_WritePin(buzzer, LOW);
}

void BUZZER_OffActiveLow(DIO_Pin_type buzzer)
{
    DIO_WritePin(buzzer, HIGH);
}
