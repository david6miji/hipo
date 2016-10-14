/*-----------------------------------------------------------------------------
  file : ac_servo.h
  desc : 
  auth : frog@falinux.com
  date : 2016/09/07
  noty : linux-imx6_3.10.53

-------------------------------------------------------------------------------*/
#ifndef _AC_SERVO_H_
#define _AC_SERVO_H_

#define MAX_AC_SERVO_CHANNEL     16

struct ac_servo_channel 
{
	int 	index;
	char 	name[128];
};

int asc_init( void );
int asc_free( void );

void asc_pulse_callback(struct fcm_channel *channel, int mode, int channel_index);

#endif  // _AC_SERVO_H_

//
//  주기적으로 호출되어 펄스를 토글링하는 메커니즘의 약자 
//  Function Call Modulation (FCM) interface
//  

