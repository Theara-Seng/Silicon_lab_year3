/*
 * HC-SR04.h
 *
 *  Created on: Apr 22, 2021
 *      Author: sengt
 */

#ifndef INC_HC_SR04_H_
#define INC_HC_SR04_H_
#include <SI_EFM8LB1_Register_Enums.h>
#include "STDIO.H"
#include "stdint.h"
#include "pin.h"
#include "serial.h"
#define HC_SR04_SUCCESS         0
#define HC_SR04_OUT_OF_RANGE    1

uint8_t hc_sr04_get_distance(uint16_t *distance);

#endif /* INC_HC_SR04_H_ */