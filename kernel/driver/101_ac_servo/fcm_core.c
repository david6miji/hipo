/*-----------------------------------------------------------------------------
  file : fcm_core.c
  desc : Function Call Modulation (FCM) interface Core Source
  auth : frog@falinux.com
  date : 2016/09/16
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

/**
  * fcm_alloc() - allocate a instance of FCM
  * @max_channel	: fcm channel 
  * @queue_size		: fcm queue size 
  * 
  * Returns: A pointer to the allocated FCM or an ERR_PTR()-encoded 
  * error code on failure
  */
struct fcm *fcm_alloc( int channel_count, int queue_size ){
	struct fcm *fcm;
	
	fcm = kmalloc( sizeof(struct fcm), GFP_KERNEL);
	if( !fcm ){
		fcm = ERR_PTR(-ENOMEM);
		return fcm;
	}
	
	memset( fcm, 0, sizeof(struct fcm) );
	fcm->channel_count 	= channel_count;
	fcm->queue_size		= queue_size;
	
	fcm->period_head	=  0;
	fcm->period_tail	= -1;
	fcm->period_count	=  0;
	
	return fcm;
}

/**
  * fcm_free() - free a instance of FCM
  * @fcm: fcm instance 
  *
  * Returns: 0 on success or a negative error code on failure.
  */
int fcm_free( struct fcm *fcm ){
	if (IS_ERR_OR_NULL(fcm)){
		return -1;
	}
	
	kfree( fcm );
	return 0;
}

/**
  * fcm_loop() - This function is called by extern function 
  * @fcm: fcm instance 
  *
  * Returns: 0 on success or a negative error code on failure.
  */
int	fcm_loop( struct fcm *fcm ){
	
	struct fcm_period 	*current_period;
	int					channel_count;
	int					channel_index;
	struct fcm_channel *channel;
	int 				dt;
	int 				dd;
	int 				error;
	
	if (IS_ERR_OR_NULL(fcm)){
		return -1;
	}
	
	current_period = NULL;
	
//	printk( "\nFCM_LOOP : " );
	
//	printk( "fcm_loop() called (%ld).\n", jiffies );
	if( fcm->current_period == NULL ){
		fcm->current_period = fcm_pop_period( fcm );
		if( IS_ERR_OR_NULL(current_period) ) return 0;
		fcm->current_period->period_index = 0;
	}
	
	current_period = fcm->current_period;
	if( current_period == NULL) return 0;
	
	
//	printk( "FCM_LOOP : PASS ONE\n" );
//	printk( "FCM_LOOP : period count = %d\n", current_period->period_count );
//	printk( "FCM_LOOP : period index = %d\n", current_period->period_index );

//	printk( "period index = %d ", current_period->period_index );
	
	dt = current_period->period_count;
	channel_count = fcm->channel_count;
	
	for( channel_index = 0; channel_index < channel_count; channel_index++ ){
//		printk( "FCM_LOOP : channel index = %d\n", channel_index );
		channel = &(current_period->channels[channel_index]);
		
//		printk( "FCM_LOOP : channel frequency_count = %d\n", 	channel->frequency_count );
//		printk( "FCM_LOOP : channel callback = %p\n", 			channel->callback );

		dd = channel->frequency_count;
		error = channel->error;
		if (error >-dt) { channel->error -= dd; }
		if (error < dd) { 
			channel->error += dt; 
			if( channel->callback != NULL ){
				channel->callback( fcm, channel_index );
			}
		} else {
//			printk( " (     :%d) ", channel_index ); 
		}

	}
	
	current_period->period_index = current_period->period_index + 1;
	if( current_period->period_index >= current_period->period_count ){
		fcm->current_period = NULL;
	}

	return 0;
}

/**
  * fcm_peek_empty_period() - get empty period from internal period queue 
  * @fcm: fcm instance 
  *
  * Returns: A pointer to the allocated a period object or an ERR_PTR()-encoded 
  * error code on failure
  */
struct fcm_period * fcm_peek_empty_period( struct fcm *fcm ){
	
	struct fcm_period 	*period;
	int					peek_index;

	if (IS_ERR_OR_NULL(fcm)){
		return ERR_PTR(-ENOMEM);
	}

	if( fcm->period_count == fcm->queue_size ){
		// no empty period !	
		return NULL;
	}
	
	peek_index =fcm->period_tail;
	if( peek_index == ( fcm->queue_size -1 ) ){
		peek_index = -1;       
    }
	
	period = &(fcm->periods[peek_index+1]); 
	
	return period;

}

/**
  * fcm_push_period() - push setted period to internal period queue 
  * @fcm: fcm instance 
  *
  * Returns: 0 on success or a negative error code on failure.
  */
int	fcm_push_period( struct fcm *fcm ){

	if (IS_ERR_OR_NULL(fcm)){
		return -ENOMEM;
	}

	if( fcm->period_count == fcm->queue_size ){
		// no empty period !	
		return -ENOMEM;
	}
	
	if( fcm->period_tail == ( fcm->queue_size -1 ) ){
	    fcm->period_tail = -1;       
    }
	
	fcm->period_tail = fcm->period_tail + 1;
	fcm->period_count = fcm->period_count + 1;
	
	return 0;
}

struct fcm_period * fcm_pop_period( struct fcm *fcm ){
	
	struct fcm_period 	*period;

	if (IS_ERR_OR_NULL(fcm)){
		return ERR_PTR(-ENOMEM);
	}

	if( fcm->period_count == 0 ){
		// no empty period queue!	
		return NULL;
	}
	
	period = &(fcm->periods[fcm->period_head]); 
	
	fcm->period_count = fcm->period_count - 1;
	
	fcm->period_head  = fcm->period_head  + 1;
	if( fcm->period_head == ( fcm->queue_size ) ){
		fcm->period_head = 0;       
    }
	
	return period;
}

/**
  * fcm_set_period_count() - set period count to empty period.
  * @fcm: fcm instance 
  *
  * Returns: 0 on success or a negative error code on failure.
  */
int	fcm_set_period_count( struct fcm *fcm, struct fcm_period *period, int period_count ){
	
	if (IS_ERR_OR_NULL(fcm)){
		return -ENOMEM;
	}
	
	if (IS_ERR_OR_NULL(period)){
		return -ENOMEM;
	}
	
	period->period_count = period_count;
	
	return 0;
}

/**
  * fcm_set_channel_frequency() - set period count to empty period.
  * @fcm: fcm instance
  * 
  * Returns: 0 on success or a negative error code on failure.
  */
int fcm_set_channel_frequency( 
        struct fcm 			*fcm, 
        struct fcm_period 	*period, 
 		int    				channel_index,
 		int    				frequency_count,
 		void  (*callback)(struct fcm *fcm, int channel_index) 
){
	struct fcm_channel *channel;
	int 				dt;
	int 				dd;
	
	if( fcm->channel_count <= channel_index ){
		return -EINVAL;
	}

	channel = &period->channels[channel_index];
	channel->frequency_count 	= frequency_count;
	channel->callback 			= callback;
	
	dt = period->period_count;
	dd = channel->frequency_count;
	
	channel->error	= ( dt > dd ? dt : -dd ) / 2;
	
	return 0;
}

/* end */

