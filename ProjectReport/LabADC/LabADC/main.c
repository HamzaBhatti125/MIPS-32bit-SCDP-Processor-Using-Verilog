#include <avr/io.h>
#define  F_CPU 8000000UL
#include <util/delay.h>
void adc(void);
void read_adc(void);


int main(void)
{
    DDRC = 0b00000000;
	DDRE = 0xFF;
	DDRB = 0b00110111;
	DDRD = 0xFF;
	//TCCR2 |= (1 << WGM20 ) | (1 << WGM21) | (1 << COM21) | (1<<CS20);
	TCCR0 |=(1<<WGM01)  | (1<<COM00) | (1<<CS00);
	OCR0 = 2;
	//int x;
	PORTB = 0b00001000;
	
	
	
    while (1) 
    {
		adc();
		//x = PINC;
		//OCR2 = x;
    }
	
}

void adc(void)
{
	PORTE = 0x00;
	read_adc();
}

void read_adc(void)
{
	
	char num = 0;
	PORTB = PORTB| 0b00100010;
	_delay_ms(100);
	PORTB = PORTB & 0b11011101;
	while((PINB & 0b00110111) == 1);
	while((PINB & 0b00110111) == 0);
	PORTB = PORTB | (0b00110111);
	num = PINC;
	_delay_ms(200);
	PORTB = PORTB & (0b11101111);
	PORTD = num;
}
