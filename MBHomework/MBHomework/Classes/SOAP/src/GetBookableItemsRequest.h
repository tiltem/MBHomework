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
@class ArrayOfLong;
#import "MBRequest.h"
#import "RequestResultHandler.h"
#import "DDXML.h"



@interface GetBookableItemsRequest : MBRequest 


@property (retain,nonatomic,getter=getSessionTypeIDs) ArrayOfInt* SessionTypeIDs;

@property (retain,nonatomic,getter=getLocationIDs) ArrayOfInt* LocationIDs;

@property (retain,nonatomic,getter=getStaffIDs) ArrayOfLong* StaffIDs;

@property (retain,nonatomic,getter=getStartDate) NSString* StartDate;

@property (retain,nonatomic,getter=getEndDate) NSString* EndDate;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(RequestResultHandler*) __request;
+(GetBookableItemsRequest*) createWithXml:(DDXMLElement*)__node __request:(RequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request;
@end