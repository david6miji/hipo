/*-----------------------------------------------------------------------------
  file : ac_servo.c
  desc : 
  auth : frog@falinux.com
  date : 2016-07 ~
  noty : linux 3.14 for imx6

-------------------------------------------------------------------------------*/
#ifndef __KERNEL__
#define __KERNEL__
#endif

#ifndef MODULE
#define MODULE
#endif

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/init.h>
#include <linux/fs.h>
#include <linux/sched.h> 
#include <linux/interrupt.h>
#include <linux/wait.h>
#include <linux/slab.h>    
#include <linux/poll.h>     
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/workqueue.h>
#include <linux/irq.h>		
#include <linux/hrtimer.h>
#include <linux/ktime.h>
#include <linux/time.h>			
#include <linux/timer.h>		
#include <linux/platform_device.h>
#include <linux/dma-mapping.h>
#include <asm/uaccess.h>
#include <asm/ioctl.h>
#include <asm/unistd.h>
#include <asm/io.h>
#include <asm/irq.h>

#include <linux/delay.h>

#include <linux/gpio.h>
#include "fcm.h"

/* local var ------------------------------------------------------------------*/
// [GPIO 인덱스] = ( [GPIO 구룹 번호] - 1 )*32 + [GPIO 번호]
#define GP2_4_INDEX  36 // (2-1)*32+4
#define GP2_5_INDEX  37 // (2-1)*32+5

static int gpio_forward  = GP2_4_INDEX;
static int gpio_backward = GP2_5_INDEX;

// static struct ac_servo_channel 	asc_channel[MAX_AC_SERVO_CHANNEL];
// static int						asc_channel_count = 0;
// 
int asc_init( void )
{
	int ret;
	
	printk( "CALL asc_init()\n" );
	
	ret = gpio_request( gpio_forward, "gpio_forward" );
 	if( 0 == ret ){
		gpio_direction_output(gpio_forward, 0);
 	} else {
		printk( "gpio error [index:%d] ret = %d\n", gpio_forward, ret );
	}
	
	ret = gpio_request( gpio_backward, "gpio_backward" );
 	if( 0 == ret ){
		gpio_direction_output(gpio_backward, 0);
 	} else {
		printk( "gpio error [index:%d] ret = %d\n", gpio_forward, ret );
	}
	
	return 0;
	
}

int asc_free( void )
{
	printk( "CALL asc_free()\n" );
	
	gpio_direction_input(gpio_forward);
	gpio_direction_input(gpio_backward);
	gpio_free(gpio_forward);
	gpio_free(gpio_backward);	
	
	return 0;
	
}

void asc_pulse_callback(struct fcm_channel *channel, int mode, int channel_index)
{
	if( channel_index != 0 )
	{	
	//	switch( mode ) 
	//	{
	//	case FCM_CALLBACK_MODE_READY : printk( " (READY:%d)\n", channel_index ); break;
	//	case FCM_CALLBACK_MODE_PULSE : printk( " (PULSE:%d)\n", channel_index ); break;
	//	case FCM_CALLBACK_MODE_DONE  : printk( " (DONE :%d)\n", channel_index ); break;
	//	}
	}
	
	if( mode == FCM_CALLBACK_MODE_READY && channel_index == 0 ) 
	{
		gpio_set_value(gpio_forward,  0);
		gpio_set_value(gpio_backward, 0);
		return;
	}

	if( mode == FCM_CALLBACK_MODE_PULSE ) 
	{
		if( channel_index == 0 )
		{	
			if( channel->direction == FCM_DIRECTION_FORWARD ) gpio_set_value(gpio_forward,  1);
			else                                        	   gpio_set_value(gpio_backward, 1);
		}	
	}
	
	if( mode == FCM_CALLBACK_MODE_DONE && channel_index == 2 ) 
	{
//		ndelay();
		udelay(500);
//		mdelay();		
		gpio_set_value(gpio_forward,  0);
		gpio_set_value(gpio_backward, 0);
	}

}


/* end */

