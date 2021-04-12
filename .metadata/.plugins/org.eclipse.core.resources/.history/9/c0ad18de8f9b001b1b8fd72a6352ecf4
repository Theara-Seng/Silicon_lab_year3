//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include <SI_EFM8LB1_Register_Enums.h>                // SFR declarations
#include <STDIO.H>

uint32_t volatile msTicks = 0;

//-----------------------------------------------------------------------------
// SiLabs_Startup() Routine
// ----------------------------------------------------------------------------
// This function is called immediately after reset, before the initialization
// code is run in SILABS_STARTUP.A51 (which runs before main() ). This is a
// useful place to disable the watchdog timer, which is enable by default
// and may trigger before main() in some instances.
//-----------------------------------------------------------------------------
void SiLabs_Startup (void)
{
  // Disable the watchdog here
  WDTCN = 0xDE;
  WDTCN = 0xAD;
}

/* Interrupt service routine **************************************************/


/* Initialization functions ***************************************************/
void SYSCLK_Init()
{
  /* set up SYSCLK to 24.5 MHz */
  CLKSEL = CLKSEL_CLKDIV__SYSCLK_DIV_1 | CLKSEL_CLKSL__HFOSC0;
  while ((CLKSEL & CLKSEL_DIVRDY__BMASK) != CLKSEL_DIVRDY__READY);
}

void XBAR_Init()
{
  /* set up crossbar */
  XBR2 |= XBR2_XBARE__ENABLED; // enable crossbar
  // skip P0.0 - P0.3, P0.6 - P0.7, P1.0 - P1.2
  P0SKIP = 0xCF; // 0b1100 1111
  P1SKIP = 0x07; // 0b0000 0111
  // enable output compare CEX0 and UART0
  XBR0 |= XBR0_URT0E__ENABLED;
  XBR1 |= XBR1_PCA0ME__CEX0_TO_CEX1;

  // set up UART0 TX pin (P0.4) as push-pull
  P0MDOUT |= P0MDOUT_B4__PUSH_PULL;

  // set up P1.3 as push-pull
  P1MDOUT |= P1MDOUT_B3__PUSH_PULL;
  P1MDOUT |= P1MDOUT_B4__PUSH_PULL;
}

void PWM_Init()
{
  /* setup 8-bit PWM on CEX0 */
  PCA0CPM0 |= PCA0CPM0_PWM16__16_BIT;
  PCA0CPM0 |=PCA0CPM0_PWM__ENABLED;
  PCA0CPM1 |=PCA0CPM1_PWM__ENABLED;
  // write pwm to autoreload register
  PCA0CPL0=0;
  PCA0CPL1=0;
  PCA0CPH0 = 0;
  PCA0CPH1= 0;
  // start PCA
  PCA0CN0 |= PCA0CN0_CR__RUN;
}






void UART0_Init()
{
  // configure this function if UART interrupt and/or 9-bit mode is required
  // otherwise, you can leave it blank
}


/* User-defined functions *****************************************************/

//-----------------------------------------------------------------------------
// main() Routine
// ----------------------------------------------------------------------------
// Note: the software watchdog timer is not disabled by default in this
// example, so a long-running program will reset periodically unless
// the timer is disabled or your program_PWM__ENABLED periodically writes to it.
//
// Review the "Watchdog Timer" section under the part family's datasheet
// for details. To find the datasheet, select your part in the
// Simplicity Launcher and click on "Data Sheet".
//-----------------------------------------------------------------------------
uint32_t t0_last, t1_last, t2_last;

const uint16_t dt0 = 50;
const uint16_t dt1 = 1000;
const uint16_t dt2 = 50;
uint8_t pwm_val = 0;
int8_t pwm_dir = 10;
uint8_t pwm_val1 = 0;
bit btn_now = 1;
bit btn_last = 1;

char xdata msg[64];

int main (void)
{
  /* device init */
  SYSCLK_Init();
  XBAR_Init();
  PWM_Init();
  //TIMER01_Init();
 // UART0_Init();

  /* enable all interrupt */



  while (1) {
    /* task scheduling */

      /* breathing LED */

      pwm_val = 300;
      pwm_val1=40;
      PCA0CPL0=0xff;
      PCA0CPH0 = 0xff;
      PCA0CPH1 =pwm_val1;


  }                             // Spin forever
}
