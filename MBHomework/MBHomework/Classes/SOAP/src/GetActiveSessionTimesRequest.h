//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

@class ArrayOfInt;
#import "MBRequest.h"
#import "RequestResultHandler.h"
#import "DDXML.h"



@interface GetActiveSessionTimesRequest : MBRequest 


@property (retain,nonatomic,getter=getScheduleType) NSString* ScheduleType;

@property (retain,nonatomic,getter=getSessionTypeIDs) ArrayOfInt* SessionTypeIDs;

@property (retain,nonatomic,getter=getStartTime) NSString* StartTime;

@property (retain,nonatomic,getter=getEndTime) NSString* EndTime;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(RequestResultHandler*) __request;
+(GetActiveSessionTimesRequest*) createWithXml:(DDXMLElement*)__node __request:(RequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request;
@end