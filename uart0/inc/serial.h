/*
 * serial.h
 *
 *  Created on: May 13, 2021
 *      Author: sengt
 */

#ifndef INC_SERIAL_H_
#define INC_SERIAL_H_

#include <SI_EFM8LB1_Register_Enums.h>

void uart_timer();
void put_char(char c);
void put_string(char* str);
char receive_char();
#endif /* INC_SERIAL_H_ */
