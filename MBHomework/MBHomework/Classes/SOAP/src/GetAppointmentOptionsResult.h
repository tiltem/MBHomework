//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

@class ArrayOfOption;
#import "MBResult.h"
#import "RequestResultHandler.h"
#import "DDXML.h"



@interface GetAppointmentOptionsResult : MBResult 


@property (retain,nonatomic,getter=getOptions) ArrayOfOption* Options;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(RequestResultHandler*) __request;
+(GetAppointmentOptionsResult*) createWithXml:(DDXMLElement*)__node __request:(RequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request;
@end