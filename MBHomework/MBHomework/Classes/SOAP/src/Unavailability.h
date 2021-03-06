//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

#import "ScheduleItem.h"
#import "RequestResultHandler.h"
#import "DDXML.h"



@interface Unavailability : ScheduleItem 


@property (retain,nonatomic,getter=getID) NSString* ID;

@property (retain,nonatomic,getter=getStartDateTime) NSString* StartDateTime;

@property (retain,nonatomic,getter=getEndDateTime) NSString* EndDateTime;

@property (retain,nonatomic,getter=getDescription) NSString* Description;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(RequestResultHandler*) __request;
+(Unavailability*) createWithXml:(DDXMLElement*)__node __request:(RequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request;
@end