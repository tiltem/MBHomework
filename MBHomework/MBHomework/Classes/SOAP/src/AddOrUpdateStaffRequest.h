//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

@class ArrayOfStaff;
#import "MBRequest.h"
#import "RequestResultHandler.h"
#import "DDXML.h"



@interface AddOrUpdateStaffRequest : MBRequest 


@property (retain,nonatomic,getter=getUpdateAction) NSString* UpdateAction;

@property (retain,nonatomic,getter=getTest) NSString* Test;

@property (retain,nonatomic,getter=getStaff) ArrayOfStaff* Staff;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(RequestResultHandler*) __request;
+(AddOrUpdateStaffRequest*) createWithXml:(DDXMLElement*)__node __request:(RequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request;
@end