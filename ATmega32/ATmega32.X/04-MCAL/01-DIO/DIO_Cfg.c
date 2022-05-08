#include "DIO_Interface.h"
#include "DIO_Cfg.h"

/* 
 * Choose pin mode:
 *      - OUTPUT
 *      - INFREE
 *      - INPULL
 */

const DIO_PinMode_type PinsModeArray[TOTAL_PINS]=
{
    OUTPUT,      /* Port A Pin 0 ADC0*/
	LCD_RS_PIN,      /* Port A Pin 1 ADC1*/
	LCD_EN_PIN,      /* Port A Pin 2 */
	LCD_PIN,      /* Port A Pin 3 */
	LCD_PIN,      /* Port A Pin 4 */
	LCD_PIN,      /* Port A Pin 5 */
	LCD_PIN,      /* Port A Pin 6 */
	OUTPUT,      /* Port A Pin 7 ADC7*/
	OUTPUT,      /* Port B Pin 0   / */
	OUTPUT,      /* Port B Pin 1   /*/
	OUTPUT,		 /* Port B Pin 2 / INT2*/
	OUTPUT,		 /* Port B Pin 3   /OC0*/
	KEYPAD_OUTPUT_PIN,		 /* Port B Pin 4 /ss*/
	KEYPAD_OUTPUT_PIN,		 /* Port B Pin 5 //mosi*/
	KEYPAD_OUTPUT_PIN,		 /* Port B Pin 6 /miso*/
	KEYPAD_OUTPUT_PIN,		 /* Port B Pin 7 clk*/
	OUTPUT,		 /* Port C Pin 0 */
	OUTPUT,		 /* Port C Pin 1 */
	OUTPUT,		 /* Port C Pin 2 */
	OUTPUT,		 /* Port C Pin 3 */
	OUTPUT,		 /* Port C Pin 4 */
	OUTPUT,		 /* Port C Pin 5 */
	OUTPUT,		 /* Port C Pin 6 */
	OUTPUT,		 /* Port C Pin 7 */
	OUTPUT,		 /* Port D Pin 0 */
	OUTPUT,		 /* Port D Pin 1 */
    KEYPAD_INPUT_PIN,      /* Port D Pin 2 /INT0*/
	KEYPAD_INPUT_PIN,      /* Port D Pin 3 / INT1 */
	KEYPAD_INPUT_PIN,		 /* Port D Pin 4  OC1B*/
	KEYPAD_INPUT_PIN,		 /* Port D Pin 5 OC1A*/
	OUTPUT,		 /* Port D Pin 6 /   ICP*/
	OUTPUT		 /* Port D Pin 7 */
};
