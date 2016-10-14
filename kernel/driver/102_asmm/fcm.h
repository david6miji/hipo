/*-----------------------------------------------------------------------------
  file : fcm.h
  desc : Function Call Modulation (FCM) interface Header
  auth : frog@falinux.com
  date : 2016/09/16
  noty : linux-imx6_3.10.53
-------------------------------------------------------------------------------*/

#ifndef __LINUX_FCM_H
#define __LINUX_FCM_H

#define 	FCM_MAX_PERIOD_COUNT 	256
#define 	FCM_MAX_CHANNEL_COUNT 	16

#define     FCM_DIRECTION_FORWARD    1   
#define     FCM_DIRECTION_STOP       0
#define     FCM_DIRECTION_BACKWARD  -1 

#define     FCM_DIRECTION_FORWARD_STR   "forward"
#define     FCM_DIRECTION_STOP_STR      "stop"
#define     FCM_DIRECTION_BACKWARD_STR  "backward"

#define     FCM_RUN_RUN        1   
#define     FCM_RUN_STOP       0
#define     FCM_RUN_PAUSE     -1 

#define     FCM_RUN_RUN_STR    "run"
#define     FCM_RUN_STOP_STR   "stop"
#define     FCM_RUN_PAUSE_STR  "pause"

struct fcm;

struct fcm_channel 
{
	int     direction;
	int 	frequency_count;
	int 	frequency_index;
	int		error;
	void  (*before  )(struct fcm *fcm, int channel_index);
	void  (*callback)(struct fcm *fcm, int channel_index);
	void  (*after   )(struct fcm *fcm, int channel_index);
};

struct fcm_period
{
	int 				time_count;
	int					time_index;
	struct fcm_channel  channels[FCM_MAX_CHANNEL_COUNT];
};

struct fcm
{
	int channel_count;
	int	queue_size;
	
	struct fcm_period 	periods[FCM_MAX_PERIOD_COUNT];
	int					period_head;
	int					period_tail;
	int					period_count;

	struct fcm_period 	*current_period;
	int                 run;
	
};

int					fcm_set_period_count 	( struct fcm 		*fcm, 
                                              struct fcm_period *period, 
                                              int    			period_count );

int 			  fcm_set_channel_frequency	( struct fcm 		*fcm, 
                                              struct fcm_period *period, 
 											  int    			channel_index,
 											  int    			frequency_count,
											  void  (*callback)(struct fcm *fcm, int channel_index) 
                                           );
										   
struct fcm_period * fcm_peek_empty_period	( struct fcm *fcm );

struct fcm *		fcm_create				( int channels, int queue_size );
int 				fcm_destroy				( struct fcm *fcm );
int         		fcm_get_channels		( struct fcm *fcm );

int					fcm_loop				( struct fcm *fcm );
int					fcm_resume				( struct fcm *fcm );
int					fcm_stop				( struct fcm *fcm );

int					fcm_push_period		 	( struct fcm *fcm , struct fcm_period *period  );
struct fcm_period * fcm_pop_period		 	( struct fcm *fcm );
void 				fcm_clear		 		( struct fcm *fcm );

struct fcm_period * fcm_get_active			( struct fcm *fcm );

int         		fcm_get_queue_count 	( struct fcm *fcm );
int 				fcm_get_first_index     ( struct fcm *fcm );
struct fcm_period * fcm_get_period_at    	( struct fcm *fcm , int index );

void        		fcm_foreach_queue		( struct fcm *fcm );



#endif  // __LINUX_FCM_H

