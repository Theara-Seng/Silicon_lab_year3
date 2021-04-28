/*
 * pin.h
 *
 *  Created on: Apr 22, 2021
 *      Author: sengt
 */

#ifndef INC_PIN_H_
#define INC_PIN_H_
#include <SI_EFM8LB1_Register_Enums.h>
#include "STDIO.H"
#include "stdint.h"
sbit HC_SR04_ECHO=P0^0;
sbit HC_SR04_TRIGGER=P0^1;

#endif /* INC_PIN_H_ */
