#include "SEVEN_SEGMENT_Interface.h"
#include "SEVEN_SEGMENT_Private.h"
#include "SEVEN_SEGMENT_Cfg.h"

void SEVEN_SEGMENT_Init(void)
{
    SEVEN_SEGMENT_Display(0);
}

ErrorStatus_t SEVEN_SEGMENT_Display(u8 digit)
{
#if SEVEN_SEGMENT_HARDWARE == NORMAL
    if (digit > ONE_DIGIT_MAX)
    {
        return INDEX_OUT_OF_RANGE;
    }

    DIO_WritePin(SEVEN_SEGMENT_EN_PIN, HIGH);

#if SEVEN_SEGMENT_CONNECTION == PORT
    /* Seven Segment Port */
    DIO_WritePort(SEVEN_SEGMENT_PORT, segment_map[digit]);
#elif SEVEN_SEGMENT_CONNECTION == PINS
    /* Seven Segment pins */
    DIO_WritePin(SEVEN_SEGMENT_A_PIN, READ_BIT(segment_map[digit], 0) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_B_PIN, READ_BIT(segment_map[digit], 1) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_C_PIN, READ_BIT(segment_map[digit], 2) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_D_PIN, READ_BIT(segment_map[digit], 3) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_E_PIN, READ_BIT(segment_map[digit], 4) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_F_PIN, READ_BIT(segment_map[digit], 5) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_G_PIN, READ_BIT(segment_map[digit], 6) ? HIGH : LOW);
#else
#warning The seven segment connection must be configured in SEVEN_SEGMENT_Cfg.h
#endif /* SEVEN_SEGMENT_CONNECTION */

    return OK;
#elif SEVEN_SEGMENT_HARDWARE == BCD
    if (digit > ONE_DIGIT_MAX)
    {
        return INDEX_OUT_OF_RANGE;
    }

    DIO_WritePin(SEVEN_SEGMENT_A_PIN, READ_BIT(digit, 0) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_B_PIN, READ_BIT(digit, 1) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_C_PIN, READ_BIT(digit, 2) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_D_PIN, READ_BIT(digit, 3) ? HIGH : LOW);
    return OK;
#elif SEVEN_SEGMENT_HARDWARE == MULTIPLEXED
    if (digit > TWO_DIGIT_MAX)
    {
        return INDEX_OUT_OF_RANGE;
    }

#if SEVEN_SEGMENT_MODE == COMMON_CATHODE
    DIO_WritePin(SEGMENT_FIRST_DIGIT_EN_PIN, HIGH);
    DIO_WritePin(SEGMENT_SECOND_DIGIT_EN_PIN, LOW);
#elif SEVEN_SEGMENT_MODE == COMMON_ANODE
    DIO_WritePin(SEGMENT_FIRST_DIGIT_EN_PIN, LOW);
    DIO_WritePin(SEGMENT_SECOND_DIGIT_EN_PIN, HIGH);
#else
#warning The seven segment mode must be configured in SEVEN_SEGMENT_Cfg.h
#endif /* SEVEN_SEGMENT_MODE */

    u8 first_digit = digit % DECIMAL_BASE;
#if SEVEN_SEGMENT_CONNECTION == PORT
    /* Seven Segment Port */
    DIO_WritePort(SEVEN_SEGMENT_PORT, segment_map[digit]);
#elif SEVEN_SEGMENT_CONNECTION == PINS
    /* Seven Segment pins */
    DIO_WritePin(SEVEN_SEGMENT_A_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_B_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_C_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_D_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_E_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_F_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_G_PIN, LOW);

    DIO_WritePin(SEVEN_SEGMENT_A_PIN, READ_BIT(segment_map[first_digit], 0) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_B_PIN, READ_BIT(segment_map[first_digit], 1) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_C_PIN, READ_BIT(segment_map[first_digit], 2) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_D_PIN, READ_BIT(segment_map[first_digit], 3) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_E_PIN, READ_BIT(segment_map[first_digit], 4) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_F_PIN, READ_BIT(segment_map[first_digit], 5) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_G_PIN, READ_BIT(segment_map[first_digit], 6) ? HIGH : LOW);
#else
#warning The seven segment connection must be configured in SEVEN_SEGMENT_Cfg.h
#endif /* SEVEN_SEGMENT_CONNECTION */
    _delay_ms(BUFFER_DELAY_MS);

#if SEVEN_SEGMENT_MODE == COMMON_CATHODE
    DIO_WritePin(SEGMENT_SECOND_DIGIT_EN_PIN, HIGH);
    DIO_WritePin(SEGMENT_FIRST_DIGIT_EN_PIN, LOW);
#elif SEVEN_SEGMENT_MODE == COMMON_ANODE
    DIO_WritePin(SEGMENT_SECOND_DIGIT_EN_PIN, LOW);
    DIO_WritePin(SEGMENT_FIRST_DIGIT_EN_PIN, HIGH);
#else
#warning The seven segment mode must be configured in SEVEN_SEGMENT_Cfg.h
#endif /* SEVEN_SEGMENT_MODE */

    u8 second_digit = digit / DECIMAL_BASE;
#if SEVEN_SEGMENT_CONNECTION == PORT
    /* Seven Segment Port */
    DIO_WritePort(SEVEN_SEGMENT_PORT, segment_map[digit]);
#elif SEVEN_SEGMENT_CONNECTION == PINS
    /* Seven Segment pins */
    DIO_WritePin(SEVEN_SEGMENT_A_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_B_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_C_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_D_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_E_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_F_PIN, LOW);
    DIO_WritePin(SEVEN_SEGMENT_G_PIN, LOW);

    DIO_WritePin(SEVEN_SEGMENT_A_PIN, READ_BIT(segment_map[second_digit], 0) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_B_PIN, READ_BIT(segment_map[second_digit], 1) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_C_PIN, READ_BIT(segment_map[second_digit], 2) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_D_PIN, READ_BIT(segment_map[second_digit], 3) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_E_PIN, READ_BIT(segment_map[second_digit], 4) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_F_PIN, READ_BIT(segment_map[second_digit], 5) ? HIGH : LOW);
    DIO_WritePin(SEVEN_SEGMENT_G_PIN, READ_BIT(segment_map[second_digit], 6) ? HIGH : LOW);
#else
#warning The seven segment connection must be configured in SEVEN_SEGMENT_Cfg.h
#endif /* SEVEN_SEGMENT_CONNECTION */
    _delay_ms(BUFFER_DELAY_MS);
    return OK;
#else
#warning The seven segment hardware must be configured in SEVEN_SEGMENT_Cfg.h
#endif /* SEVEN_SEGMENT_HARDWARE */
}