/*
 * serial.c
 *
 *  Created on: May 13, 2021
 *      Author: sengt
 */


#include "serial.h"

void uart_timer(){
  TH1= 0X96;  //150 -> 0X96
  TCON_TR1=1;
}
void put_char(char c){
  SBUF0=c; // write character c to buffer
  while(!SCON0_TI); //wait for TX to be completed
  SCON0_TI=0; //clear TX

}
void put_string(char* str){

  while (*str != '\x0'){
      put_char(*(str));
      str++;
  }
}
char receive_char(){
  char receive;
  SCON0 |= SCON0_REN__RECEIVE_ENABLED;
  receive=SBUF0;
  while (!SCON0_RI);
  SCON0_RI=0;
  return receive;
}
