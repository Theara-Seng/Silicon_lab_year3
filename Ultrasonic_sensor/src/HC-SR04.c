/*
 * HC-SR04.c
 *
 *  Created on: Apr 22, 2021
 *      Author: sengt
 */


#include "HC-SR04.h"

uint8_t  hc_sr04_get_distance(uint16_t *distance){
  uint16_t duration;
   uint16_t i=0;
  // uint16_t time;
   uint16_t frequency;
   uint16_t sound_duration;

  TMOD |= TMOD_T0M__MODE1;
  TH0=0X00;
  TL0=0X00;


  HC_SR04_TRIGGER=0;
  HC_SR04_TRIGGER=1;
  for (i=0;i<12;i++){
    //  __NOP();
  }
 //  delay_ms(0.1);
   HC_SR04_TRIGGER=0;

   while (!HC_SR04_ECHO)
  TCON_TR0=1;
   while(HC_SR04_ECHO);
   TCON_TR0=0;
   if (TCON_TF0){
       TCON_TF0=0;
       return HC_SR04_OUT_OF_RANGE;
   }

   duration=(((uint16_t)TH0)<<8)| TL0;
   frequency=(510,416/(65536-duration));
   sound_duration=(1/frequency);
   *distance=(sound_duration*170*1000);

    return HC_SR04_SUCCESS;
}
