//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

@class ArrayOfAppointment;
#import "MBResult.h"
#import "RequestResultHandler.h"
#import "DDXML.h"



@interface AddOrUpdateAppointmentsResult : MBResult 


@property (retain,nonatomic,getter=getAppointments) ArrayOfAppointment* Appointments;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(RequestResultHandler*) __request;
+(AddOrUpdateAppointmentsResult*) createWithXml:(DDXMLElement*)__node __request:(RequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request;
@end