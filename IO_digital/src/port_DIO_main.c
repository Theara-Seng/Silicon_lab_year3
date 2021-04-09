//=========================================================
// src/port_DIO_main.c: generated by Hardware Configurator
//
// This file will be updated when saving a document.
// leave the sections inside the "$[...]" comment tags alone
// or they will be overwritten!!
//=========================================================

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include <SI_EFM8LB1_Register_Enums.h>                  // SFR declarations
#include "InitDevice.h"
// $[Generated Includes]
// [Generated Includes]$
sbit led = P1 ^ 3;  // P1_B3
sbit button = P1 ^ 4;
unsigned long i;
//-----------------------------------------------------------------------------
// SiLabs_Startup() Routine
// ----------------------------------------------------------------------------
// This function is called immediately after reset, before the initialization
// code is run in SILABS_STARTUP.A51 (which runs before main() ). This is a
// useful place to disable the watchdog timer, which is enable by default
// and may trigger before main() in some instances.
//-----------------------------------------------------------------------------
void
SiLabs_Startup (void)
{
  // $[SiLabs Startup]
  // [SiLabs Startup]$
}
void button_push(){
  if (button==0){
      led=0;
  }else{
      led=1;
  }
}
void blink_led(){
        led = 0;
       for (i = 1; i <= 326530; i++)
         {

         }
       led = 1;
       for (i = 1; i <= 326530; i++)
         {

         }
}
//-----------------------------------------------------------------------------
// main() Routine
// ----------------------------------------------------------------------------
int
main (void)
{
  // Call hardware initialization routine
  enter_DefaultMode_from_RESET ();
  XBR2 |= XBR2_XBARE__ENABLED;
  P1MDOUT |=P1MDOUT_B3__PUSH_PULL;
  while (1)
    {


     // blink_led();  //delete the blink_led comment  for the led blink with one second
      button_push();  // enable this button for logic control-> when push the led is on and not push the led is off
// $[Generated Run-time code]
// [Generated Run-time code]$
    }
}
