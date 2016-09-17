/*-----------------------------------------------------------------------------
  file : base_main.c
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


#include "fcm.h"

#define  THIS_DRV_VER		"0.0.1"
#define  THIS_DRV_NAME		DRIVER_NAME_AC_SERVO_MOTOR
#define  THIS_DRV_MAJOR		DRIVER_MAJOR_AC_SERVO_MOTOR

/* global var -----------------------------------------------------------------*/


/* local var ------------------------------------------------------------------*/

#define MAX_CHANNEL 	3
static struct fcm *fcm = NULL;

#define MS_TO_NS(x) (x * 1E6L)
static struct hrtimer 	hr_timer;
static        ktime_t 	hr_timer_expiry_time;

void acsm_hrtimer_start( void )
{
	hrtimer_start( 	
					&hr_timer, 				// hrtimer 주소 
					hr_timer_expiry_time, 	// 함수 호출 시점
					HRTIMER_MODE_REL 		// 함수 호출 시점 기준
				 );
}

enum hrtimer_restart acsm_hrtimer_callback( struct hrtimer *timer )
{
	
	fcm_loop( fcm );
	acsm_hrtimer_start();
	
    return HRTIMER_NORESTART;
}

void acsm_hrtimer_init( const s32 secs, const u32 nsecs )
{
	
	hr_timer_expiry_time = ktime_set( secs, nsecs );
	
	hrtimer_init( 
		&hr_timer, 			// hrtimer 주소 
		CLOCK_MONOTONIC, 	// 대상 시간 
		HRTIMER_MODE_REL    // 처리 시간 기준 모드 		
	);
 
	hr_timer.function = &acsm_hrtimer_callback;
	
}

static void pulse_callback(struct fcm *fcm, int channel_index ){
//	printk( " (Pulse:%d) ", channel_index ); 
	
}

//-----------------------------------------------------------------------------
/** @brief   driver init
	@remark  
*///----------------------------------------------------------------------------
static int __init acsm_init(void)
{
	struct fcm_period *fcm_period;
	
	printk( "FCM - Function Call Modulation Test\n" );
	fcm = fcm_alloc( MAX_CHANNEL, FCM_MAX_PERIOD_COUNT );
	if (IS_ERR_OR_NULL(fcm)){
		return -ENOMEM;
	}
	
	acsm_hrtimer_init( 0L, MS_TO_NS(100L) );
	
	fcm_period = fcm_peek_empty_period( fcm );
	if( !IS_ERR_OR_NULL(fcm_period)){
		printk( "OK FCM_PERIOD\n" );
 		fcm_set_period_count		( fcm, fcm_period, 10 );
 		fcm_set_channel_frequency	( fcm, fcm_period,  0, 4, pulse_callback );
 		fcm_set_channel_frequency	( fcm, fcm_period,  1, 0, pulse_callback );
 		fcm_set_channel_frequency	( fcm, fcm_period,  2, 6, pulse_callback );
		fcm_push_period( fcm );
	}

	printk( "Starting hrtimer\n");
	acsm_hrtimer_start();

	return 0;
}

//-----------------------------------------------------------------------------
/** @brief   driver exit
	@remark  
*///---------------------------------------------------------------------------
static void __exit acsm_exit(void)
{
	int ret;

	ret = hrtimer_cancel( &hr_timer );
	if (ret) printk("The timer was still in use...\n");
	
	ret = fcm_free( fcm );
	printk( "Remove FCM ret = %d\n", ret );
	
}

/*-----------------------------------------------------------------------------*/

module_init(acsm_init);
module_exit(acsm_exit);

MODULE_AUTHOR("frog@falinux.com");
MODULE_LICENSE("GPL");

/* end */
