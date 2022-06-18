#ifndef STDTYPES_H
#define STDTYPES_H

typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned long int u32;

typedef signed char s8;
typedef signed short int s16;
typedef signed long int s32;

typedef float f32;
typedef double f64;
typedef long double f96;

typedef union
{
    struct
    {
        u8 Bit0 : 1;
        u8 Bit1 : 1;
        u8 Bit2 : 1;
        u8 Bit3 : 1;
        u8 Bit4 : 1;
        u8 Bit5 : 1;
        u8 Bit6 : 1;
        u8 Bit7 : 1;
    } BitAccess;

    u8 ByteAccess;

} Register_8Bit;

typedef enum
{
    OK = 0,
    NOT_OK = 4,
    INDEX_OUT_OF_RANGE = 8,
    ACCESS_NULL_POINTER = 16
} ErrorStatus_t;

typedef enum
{
    false = 0,
    true = 1
} Bool_t;

#define NULL 0
#define NULLPTR ((void *)0)

#endif /* STDTYPES_H */