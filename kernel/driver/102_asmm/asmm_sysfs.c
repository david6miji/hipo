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

#include "asmm_sysfs.h"
#include "asmm_sysfs.h"
#include "fcm.h"

extern struct fcm *fcm;
static DEFINE_MUTEX(sysfs_lock);

// 	/sys/class/asmm/channels        : 읽기 : 시스템이 제공하는 채널 수 
// 										 cat channels 
// 										 3

static ssize_t channels_show( struct class *class,
							  struct class_attribute *attr,
							  char *buf )
{
	char *start = buf;

	mutex_lock(&sysfs_lock);

	buf += sprintf( buf, "%d", fcm_get_channels(fcm) );

	mutex_unlock(&sysfs_lock);
    return buf - start;
}

// 	
// 	/sys/class/asmm/period          : 쓰기 : 하나의 주기에 대한 시작처리와 시간 지정
// 	                                         모든 채널의 방향은 정방향으로 초기화 
//                                              모든 채널의 거리는 0 으로 초기화 											 
// 	/sys/class/asmm/period          : 읽기 : 현재 설전된 주기의 시간 값 
// 											 
// 										echo 3 > period
// 										시간 주기를 3 으로 선택   
// 										시간 주기는 반드시 0 이상이어야 한다. 
// 										만약 1 보다 작으면 강제로 1 로 설정 
// 										

static ssize_t period_store(  struct class *class,
                              struct class_attribute *attr,
                              const char *buf, size_t size)
{
	ssize_t 		status=0;
	unsigned long   val;
	
	mutex_lock(&sysfs_lock);

	status = kstrtoul(buf, 0, &val);
	if(status){
		status = -EINVAL;
	}
	
	printk( "CALL write period %lu\n", val );

	mutex_unlock(&sysfs_lock);
	return status ? : size;
}

static ssize_t period_show( struct class *class,
							  struct class_attribute *attr,
							 char *buf )
{
	char *start = buf;

	mutex_lock(&sysfs_lock);

	buf += sprintf( buf, "3" );
	
	mutex_unlock(&sysfs_lock);
    return buf - start;
}

// 	/sys/class/asmm/channel         : 쓰기 : 채널 선택
// 	/sys/class/asmm/channel         : 읽기 : 선택된 채널
// 										
// 										echo 0 > channel
// 										cat channel

static ssize_t channel_store(  struct class *class,
                              struct class_attribute *attr,
                              const char *buf, size_t size)
{
	ssize_t 		status=0;
	unsigned long   val;
	
	mutex_lock(&sysfs_lock);

	status = kstrtoul(buf, 0, &val);
	if(status){
		status = -EINVAL;
	}
	
	printk( "CALL write channel %lu\n", val );

	mutex_unlock(&sysfs_lock);
	return status ? : size;
}

static ssize_t channel_show( struct class *class,
							  struct class_attribute *attr,
							 char *buf )
{
	char *start = buf;

	mutex_lock(&sysfs_lock);

	buf += sprintf( buf, "3" );
	
	mutex_unlock(&sysfs_lock);
    return buf - start;
}

// 										
// 	/sys/class/asmm/direction       : 쓰기 : 선택된 채널의 방향 설정 forward, backward
// 	/sys/class/asmm/direction       : 읽기 : 선택된 채널의 방향 forward, backward
// 
// 										echo forward > direction
// 										cat direction

static ssize_t direction_store(  struct class *class,
                              struct class_attribute *attr,
                              const char *buf, size_t size)
{
	ssize_t 		status=0;
	
	mutex_lock(&sysfs_lock);
	
	printk( "CALL write direction --> %s:%d\n", buf,size);	

	if( strncmp( buf,"forward", size-1 ) == 0 ){
	    printk( "CALL write direction forward\n" );	
	} else if( strncmp( buf,"backward",size-1 ) == 0 ){
	    printk( "CALL write direction backward\n" );	
	} else {
		printk( "CALL write direction error then forward\n");	
	}

	mutex_unlock(&sysfs_lock);
	return status ? : size;
}

static ssize_t direction_show( struct class *class,
							  struct class_attribute *attr,
							 char *buf )
{
	char *start = buf;

	mutex_lock(&sysfs_lock);

	buf += sprintf( buf, "forward" );
	
	mutex_unlock(&sysfs_lock);
    return buf - start;
}

// 	
// 	/sys/class/asmm/distance        : 쓰기 : 선택된 채널의 거리 설정 
// 	/sys/class/asmm/distance        : 읽기 : 선택된 채널의 거리 
// 	
// 	                                    거리값은 0 부터 시작 할수 있으며 주기 값보다 크면 강제로 
// 										주기 값 으로 설정된다. 
// 
// 										echo forward > distance
// 										cat distance

static ssize_t distance_store(  struct class *class,
                              struct class_attribute *attr,
                              const char *buf, size_t size)
{
	ssize_t 		status=0;
	unsigned long   val;
	
	mutex_lock(&sysfs_lock);

	status = kstrtoul(buf, 0, &val);
	if(status){
		status = -EINVAL;
	}
	
	printk( "CALL write distance %lu\n", val );

	mutex_unlock(&sysfs_lock);
	return status ? : size;
}

static ssize_t distance_show( struct class *class,
							  struct class_attribute *attr,
							 char *buf )
{
	char *start = buf;

	mutex_lock(&sysfs_lock);

	buf += sprintf( buf, "3" );
	
	mutex_unlock(&sysfs_lock);
    return buf - start;
}

// 	
// 	/sys/class/asmm/push            : 쓰기 : 전체 채널에 대하여 설정된 주기 값, 방향, 거리의 데이터를
//                                           내부 처리 큐로 푸쉬 

static ssize_t push_store(  struct class *class,
                              struct class_attribute *attr,
                              const char *buf, size_t size)
{
	ssize_t 		status=0;
	
	mutex_lock(&sysfs_lock);

	printk( "CALL write push\n" );

	mutex_unlock(&sysfs_lock);
	return status ? : size;
}

// 
// 	/sys/class/asmm/flush           : 쓰기 : 지정된 주기 내부 처리 큐를 모두 비운다.
// 	
static ssize_t flush_store(  struct class *class,
                              struct class_attribute *attr,
                              const char *buf, size_t size)
{
	ssize_t 		status=0;
	
	mutex_lock(&sysfs_lock);

	printk( "CALL write flush\n" );

	mutex_unlock(&sysfs_lock);
	return status ? : size;
}

// 	/sys/class/asmm/count           : 읽기 : 큐에 저장된 주기 갯수
static ssize_t count_show( struct class *class,
						   struct class_attribute *attr,
						   char *buf )
{
	char *start = buf;

	mutex_lock(&sysfs_lock);

	buf += sprintf( buf, "1" );
	
	mutex_unlock(&sysfs_lock);
    return buf - start;
}

// 	/sys/class/asmm/active         : 읽기 : 진행 중인 처리 아이템 상태 정보
static ssize_t active_show( struct class *class,
					 	    struct class_attribute *attr,
						    char *buf )
{
	char *start = buf;
	struct fcm_period *active; 

	mutex_lock(&sysfs_lock);
	
	active = fcm_get_active( fcm );
	printk( "ACTIVE = %p\n", active );
	if( active == NULL ) 
	{
		
	} 
	else
	{
		
	}

	buf += sprintf( buf, "{\n"                            );
	buf += sprintf( buf, "    \"period\"   : \"%d\",\n", 10 );
	buf += sprintf( buf, "    \"present\"  : \"%d\",\n", 5 );
	buf += sprintf( buf, "    \"progress\" : \"%s\",\n", "stop" );
	buf += sprintf( buf, "    \"channels\" : [\n" );
	buf += sprintf( buf, 
	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\", \"move\" : \"%d\" }%c\n",
		0, "forward",  11, 3, ',' 
	);
	buf += sprintf( buf, 
	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\", \"move\" : \"%d\" }%c\n",
		1, "stop",  12, 0, ',' 
	);
	buf += sprintf( buf, 
	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\", \"move\" : \"%d\" }%c\n",
		2, "backward",  13, 3, ' ' 
	);
	         
	buf += sprintf( buf, "    ]\n"                        );
	buf += sprintf( buf, "}\n"                            );

	mutex_unlock(&sysfs_lock);
    return buf - start;
}

// 	/sys/class/asmm/list            : 읽기 : 큐에 저장된 주기 리스트
static ssize_t list_show( struct class *class,
						   struct class_attribute *attr,
						   char *buf )
{
	char *start = buf;
	int  queue_count = fcm_get_queue_count( fcm );

	mutex_lock(&sysfs_lock);

	buf += sprintf( buf, "[\n"                              );
	
	printk( "queue_count = %d\n", queue_count );
	
	fcm_foreach_queue( fcm );
	
//	buf += sprintf( buf, "{\n"                              );
//	buf += sprintf( buf, "    \"seq\"      : \"%d\",\n", 1  );
//	buf += sprintf( buf, "    \"period\"   : \"%d\",\n", 11 );
//	buf += sprintf( buf, "    \"channels\" : [\n" );
//	buf += sprintf( buf, 
//	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\" }%c\n",
//		0, "forward",  11, ',' 
//	);
//	buf += sprintf( buf, 
//	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\" }%c\n",
//		1, "forward",  12, ',' 
//	);
//	buf += sprintf( buf, 
//	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\" }%c\n",
//		2, "backward",  13, ' ' 
//	);
//	         
//	buf += sprintf( buf, "    ]\n"                          );
//	buf += sprintf( buf, "}%c\n",','                       );
//
//
//	buf += sprintf( buf, "{\n"                              );
//	buf += sprintf( buf, "    \"seq\"      : \"%d\",\n", 2 );
//	buf += sprintf( buf, "    \"period\"   : \"%d\",\n", 12 );
//	buf += sprintf( buf, "    \"channels\" : [\n" );
//	buf += sprintf( buf, 
//	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\" }%c\n",
//		0, "forward",  21, ',' 
//	);
//	buf += sprintf( buf, 
//	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\" }%c\n",
//		1, "forward",  22, ',' 
//	);
//	buf += sprintf( buf, 
//	    "        { \"channel\" : \"%d\", \"direction\" : \"%s\" , \"distance\" : \"%d\" }%c\n",
//		2, "backward",  23, ' ' 
//	);
//	         
//	buf += sprintf( buf, "    ]\n"                          );
//	buf += sprintf( buf, "}%c\n",' '                       );

	
	buf += sprintf( buf, "]\n"                              );
	
	mutex_unlock(&sysfs_lock);
    return buf - start;
}

static struct class_attribute asmm_class_attrs[] = {
    __ATTR(channels,	0400, channels_show,   NULL            ),
    __ATTR(period,		0600, period_show,     period_store    ),
    __ATTR(channel,     0600, channel_show,    channel_store   ),
    __ATTR(direction,   0600, direction_show,  direction_store ),
    __ATTR(distance,    0600, distance_show,   distance_store  ),
    __ATTR(push,        0200, NULL,            push_store      ),
    __ATTR(flush,       0200, NULL,            flush_store     ),
    __ATTR(count,       0400, count_show,      NULL            ),
    __ATTR(list,        0400, list_show,       NULL            ),
    __ATTR(active,      0400, active_show,     NULL            ),
    __ATTR_NULL,
};

static struct class asmm_class = {
        .name = "asmm",
        .owner = THIS_MODULE,
		.class_attrs =  asmm_class_attrs,
};

int asmm_sysfs_create(void)
{
	printk( "create asmm sysfs\n" );
	class_register(&asmm_class);
	return 0;
}

int asmm_sysfs_destroy(void)
{
	printk( "destroy asmm sysfs\n" );
	
	class_unregister(&asmm_class);

	return 0;
}

/* end */
