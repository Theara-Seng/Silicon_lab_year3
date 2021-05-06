#include <iostream>
#include <math.h>
#define FPCA 3062500
using namespace std;

uint16_t CPL;
uint16_t CPH;
uint16_t data;

float input_duty_cycle(float duty){
  data=pow(2,16)-(duty/100)*pow(2,16);
  return data;

}
float input_millis_second(float millis){
  float frequency;
  frequency=1/(millis*0.001);
  data=pow(2,16)-(FPCA/frequency);
  return data;
}
int main()
{
 // duty cycle
 /*   float duty_cycle;
    float duty_cycle_percentage;
    CPL=100;
    CPH=100<<8;

    data=CPH+CPL;
    duty_cycle= (pow(2,16)-data)/pow(2,16);
    duty_cycle_percentage=duty_cycle*100;
    cout<<"data:"<<data<<"\t"<<"duty_cycle:"<<duty_cycle_percentage<<"%"<<endl;*/
  //duty cycle automatic
  /*   uint16_t count;
    float duty_cycle;
    cout<<"Input duty cycle:";
    cin>>duty_cycle;
    count=input_duty_cycle(duty_cycle);
    CPH=count/pow(2,8);
    CPL=count%256;

    cout<<"CPL ="<<CPL<<"\t"<<"CPH="<<CPH<<endl;*/

    //frequency
    uint16_t count;
    float millis_second;
    cout<<"Input millis_second:";
    cin>>millis_second;
    count=input_millis_second(millis_second);
    CPH=count/pow(2,8);
    CPL=count%256;

    cout<<"CPL: "<<CPL<<"\t"<<"CPH:"<<CPH<<endl;
    return 0;
}
