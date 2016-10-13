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

struct fcm;

struct fcm_channel 
{
	int 	frequency_count;
	int		error;
	void  (*before  )(struct fcm *fcm, int channel_index);
	void  (*callback)(struct fcm *fcm, int channel_index);
	void  (*after   )(struct fcm *fcm, int channel_index);
};

struct fcm_period
{
	int 				period_count;
	int					period_index;
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
	
};

struct fcm *		fcm_create			( int channels, int queue_size );
int 				fcm_destroy			( struct fcm *fcm );
int         		fcm_get_channels	( struct fcm *fcm );

struct fcm_period * fcm_get_active		( struct fcm *fcm );

int         		fcm_get_queue_count ( struct fcm *fcm );
void        		fcm_foreach_queue	( struct fcm *fcm );

int			fcm_loop		( struct fcm *fcm );


int					fcm_push_period		 	( struct fcm *fcm );
struct fcm_period * fcm_pop_period		 	( struct fcm *fcm );

struct fcm_period * fcm_peek_empty_period	( struct fcm *fcm );
int					fcm_set_period_count 	( struct fcm 		*fcm, 
                                              struct fcm_period *period, 
                                              int    			period_count );

int 			  fcm_set_channel_frequency	( struct fcm 		*fcm, 
                                              struct fcm_period *period, 
 											  int    			channel_index,
 											  int    			frequency_count,
											  void  (*callback)(struct fcm *fcm, int channel_index) 
                                           );

#endif  // __LINUX_FCM_H

