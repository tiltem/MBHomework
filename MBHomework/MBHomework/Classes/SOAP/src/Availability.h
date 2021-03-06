//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

@class Staff;
@class SessionType;
@class ArrayOfProgram;
@class Location;
#import "ScheduleItem.h"
#import "RequestResultHandler.h"
#import "DDXML.h"



@interface Availability : ScheduleItem 


@property (retain,nonatomic,getter=getID) NSString* ID;

@property (retain,nonatomic,getter=getStaff) Staff* Staff;

@property (retain,nonatomic,getter=getSessionType) SessionType* SessionType;

@property (retain,nonatomic,getter=getPrograms) ArrayOfProgram* Programs;

@property (retain,nonatomic,getter=getStartDateTime) NSString* StartDateTime;

@property (retain,nonatomic,getter=getEndDateTime) NSString* EndDateTime;

@property (retain,nonatomic,getter=getBookableEndDateTime) NSString* BookableEndDateTime;

@property (retain,nonatomic,getter=getLocation) Location* Location;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(RequestResultHandler*) __request;
+(Availability*) createWithXml:(DDXMLElement*)__node __request:(RequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request;
@end