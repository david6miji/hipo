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
#include "asmm_sysfs.h"
#include "ac_servo.h"

#define  THIS_DRV_VER		"0.0.1"
#define  THIS_DRV_NAME		DRIVER_NAME_ASSM
#define  THIS_DRV_MAJOR		DRIVER_MAJOR_ASSM

/* global var -----------------------------------------------------------------*/


/* local var ------------------------------------------------------------------*/

#define MAX_CHANNEL 	3
#define FCM_QUEUE_SIZE  FCM_MAX_PERIOD_COUNT
struct fcm *fcm = NULL;

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

//-----------------------------------------------------------------------------
/** @brief   driver init
	@remark
*///----------------------------------------------------------------------------
static int __init assm_init(void)
{

	printk( "register asmm - ac servo motor manager\n");

	asc_init();

	fcm = fcm_create( MAX_CHANNEL, FCM_QUEUE_SIZE );
	if (IS_ERR_OR_NULL(fcm)){
		return -ENOMEM;
	}

	asmm_sysfs_create();

	acsm_hrtimer_init( 0L, MS_TO_NS(1L) );
//	acsm_hrtimer_init( 0L, MS_TO_NS(100L) );
//	acsm_hrtimer_init( 0L, MS_TO_NS(1000L) );
	acsm_hrtimer_start();

	return 0;
}

//-----------------------------------------------------------------------------
/** @brief   driver exit
	@remark
*///---------------------------------------------------------------------------
static void __exit assm_exit(void)
{
 	int ret;

 	ret = hrtimer_cancel( &hr_timer );
 	if (ret) printk("The timer was still in use...\n");

	asmm_sysfs_destroy();

 	ret = fcm_destroy( fcm );

	asc_free();

 	printk( "Destroy FCM ret = %d\n", ret );

}

/*-----------------------------------------------------------------------------*/

module_init(assm_init);
module_exit(assm_exit);

MODULE_AUTHOR("frog@falinux.com");
MODULE_LICENSE("GPL");

/* end */
