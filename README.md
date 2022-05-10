# AVR Labs

Drivers for ATmega32 microcontroller implemented in C programming language

* Part of [Embedded Systems Diploma](https://github.com/aharbii/Embedded-Systems-Diploma) class work

## Software Architecture Layers

----

### APP

```text
The application layer includes various application specific software components that are designed to execute specific set of tasks, as per the use-case.
```

Implemented Applications:

* Stopwatch: Using 7-segments and buttons with features of pause/resume, reset, and adjust time.
* Moveable Car: Using DC-Motors and buttons with features of move forward, backward, turn left, and turn right.
* LCD Games: Using 4-Bit Character LCD and Buttons
* Calculator: Using 4-Bit Character LCD and Keypad with features of addition, subtraction, multiplication and division. Handled division by zero, float result of division with 6 digits precision, continuous operations with the last answer [rounded], and repeated operations with '=' button.
* Numerical Converter: Using 4-Bit Character LCD and Keypad with features of convert to/from Decimal/Binary/Hexadecimal with simple interactive user interface. Can handle unsigned 8-bit integers.

### HAL

```text
A hardware abstraction layer (HAL) is a logical division of code that serves as an abstraction layer between a computer's physical hardware and its software. It provides a device driver interface allowing a program to communicate with the hardware.
```

Implemented HAL Drivers:

* Led
* Button
* 7-Segment
* DC-Motor
* Character LCD
* Buzzer
* Keypad

### MCAL

```text
MCAL is a software module that directly accesses on-chip MCU peripheral modules and external devices that are mapped to memory, and makes the upper software layer independent of the MCU.
```

Implemented MCAL Drivers:

* DIO
