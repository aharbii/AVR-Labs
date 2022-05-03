#include "SEVEN_SEGMENT_Interface.h"
#include "SEVEN_SEGMENT_Private.h"
#include "SEVEN_SEGMENT_Cfg.h"

#if SEVEN_SEGMENT_MODE == COMMON_CATHODE
const u8 segment_map[DIGITS_COUNT] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
#elif SEVEN_SEGMENT_MODE == COMMON_ANODE
const u8 segment_map[DIGITS_COUNT] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
#else
#warning The seven segment mode must be configured in SEVEN_SEGMENT_Cfg.h
#endif /* SEVEN_SEGMENT_MODE */

