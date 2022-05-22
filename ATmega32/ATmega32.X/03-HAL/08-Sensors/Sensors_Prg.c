#include "Sensors_Interface.h"
#include "Sensors_Private.h"
#include "Sensors_Cfg.h"

void SENSORS_Init(void)
{
}

u16 POT_ReadVolt(void)
{
    u16 adc = ADC_Read(POT_CH);
    u16 volt = ((u32)adc * VREF * KILO) / ADC_RESOLUTION;
    return volt;
}

u8 POT_ReadPercentage(void)
{
    u16 input_volt = POT_ReadVolt();
    u8 pot_percentage = ((((u32)(input_volt)*PERCENTAGE * ROUND_PRECISION) / (VREF * KILO)) + ROUND_FACTOR) / ROUND_PRECISION;
    return pot_percentage;
}

u16 LM35_ReadTemp(void)
{
    u16 adc = ADC_Read(LM35_CH);
    u16 volt = ((u32)adc * VREF * KILO) / ADC_RESOLUTION;
    u16 temp = volt;
    return temp;
}

u16 MPX4115_ReadPressure(void)
{
    u16 adc = ADC_Read(MPX4115_CH);
    u16 pressure = ((((u32)(adc - MPX4115_ADC0) * MEGA) / MPX4115_LINEAR_SLOPE_x_100000)) + (MPX4115_PRESSURE0 * 10);
    return pressure;
}