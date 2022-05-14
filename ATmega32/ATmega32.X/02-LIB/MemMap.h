#ifndef MEMMAP_H
#define MEMMAP_H

/******************* DIO Registers *******************/

#define PORTA   (*((volatile unsigned char *)0x3B))
#define DDRA    (*((volatile unsigned char *)0x3A))
#define PINA    (*((volatile unsigned char *)0x39))

#define PORTB   (*((volatile unsigned char *)0x38))
#define DDRB    (*((volatile unsigned char *)0x37))
#define PINB    (*((volatile unsigned char *)0x36))

#define PORTC   (*((volatile unsigned char *)0x35))
#define DDRC    (*((volatile unsigned char *)0x34))
#define PINC    (*((volatile unsigned char *)0x33))

#define PORTD   (*((volatile unsigned char *)0x32))
#define DDRD    (*((volatile unsigned char *)0x31))
#define PIND    (*((volatile unsigned char *)0x30))

/******************* ADC Registers *******************/

#define ADMUX (*((volatile unsigned char *)0x27))
#define ADCSRA (*((volatile unsigned char *)0x26))
#define ADCH (*((volatile unsigned char *)0x25))
#define ADCL (*((volatile unsigned char *)0x24))
#define ADC  (*((volatile unsigned short *)0x24))

/*****************************************************/

#endif /* MEMMAP_H */