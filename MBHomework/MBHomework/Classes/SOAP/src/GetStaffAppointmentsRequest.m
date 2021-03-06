//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "StaffCredentials.h"
#import "ArrayOfInt.h"
#import "ArrayOfLong.h"
#import "ArrayOfString.h"
#import "MBRequest.h"
#import "Helper.h"
#import "GetStaffAppointmentsRequest.h"


@implementation GetStaffAppointmentsRequest
    @synthesize StaffCredentials;
    @synthesize AppointmentIDs;
    @synthesize LocationIDs;
    @synthesize StartDate;
    @synthesize EndDate;
    @synthesize StaffIDs;
    @synthesize ClientIDs;

+ (GetStaffAppointmentsRequest *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
{
    if(__node == nil) { return nil; }
    return [[self alloc] initWithXml: __node __request:__request];
}

-(id)init {
    if ((self=[super init])) {
    }
    return self;
}

- (id) initWithXml: (DDXMLElement*) __node __request:(RequestResultHandler*) __request{
    if(self = [super initWithXml:__node __request:__request])
    {
        if([Helper hasValue:__node name:@"StaffCredentials"])
        {
            self.StaffCredentials = (StaffCredentials*)[__request createObject:[Helper getNode:__node name:@"StaffCredentials"] type:[StaffCredentials class]];
        }
        if([Helper hasValue:__node name:@"AppointmentIDs"])
        {
            self.AppointmentIDs = (ArrayOfInt*)[__request createObject:[Helper getNode:__node name:@"AppointmentIDs"] type:[ArrayOfInt class]];
        }
        if([Helper hasValue:__node name:@"LocationIDs"])
        {
            self.LocationIDs = (ArrayOfInt*)[__request createObject:[Helper getNode:__node name:@"LocationIDs"] type:[ArrayOfInt class]];
        }
        if([Helper hasValue:__node name:@"StartDate"])
        {
            self.StartDate = [[Helper getNode:__node name:@"StartDate"] stringValue];
        }
        if([Helper hasValue:__node name:@"EndDate"])
        {
            self.EndDate = [[Helper getNode:__node name:@"EndDate"] stringValue];
        }
        if([Helper hasValue:__node name:@"StaffIDs"])
        {
            self.StaffIDs = (ArrayOfLong*)[__request createObject:[Helper getNode:__node name:@"StaffIDs"] type:[ArrayOfLong class]];
        }
        if([Helper hasValue:__node name:@"ClientIDs"])
        {
            self.ClientIDs = (ArrayOfString*)[__request createObject:[Helper getNode:__node name:@"ClientIDs"] type:[ArrayOfString class]];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{
    [super serialize:__parent __request:__request];

             
        DDXMLElement* __StaffCredentialsItemElement=[__request writeElement:StaffCredentials type:[StaffCredentials class] name:@"StaffCredentials" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__StaffCredentialsItemElement!=nil)
        {
            [self.StaffCredentials serialize:__StaffCredentialsItemElement __request: __request];
        }
             
        DDXMLElement* __AppointmentIDsItemElement=[__request writeElement:AppointmentIDs type:[ArrayOfInt class] name:@"AppointmentIDs" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__AppointmentIDsItemElement!=nil)
        {
            [self.AppointmentIDs serialize:__AppointmentIDsItemElement __request: __request];
        }
             
        DDXMLElement* __LocationIDsItemElement=[__request writeElement:LocationIDs type:[ArrayOfInt class] name:@"LocationIDs" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__LocationIDsItemElement!=nil)
        {
            [self.LocationIDs serialize:__LocationIDsItemElement __request: __request];
        }
             
        DDXMLElement* __StartDateItemElement=[__request writeElement:StartDate type:[NSString class] name:@"StartDate" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__StartDateItemElement!=nil)
        {
            [__StartDateItemElement setStringValue:self.StartDate];
        }
             
        DDXMLElement* __EndDateItemElement=[__request writeElement:EndDate type:[NSString class] name:@"EndDate" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__EndDateItemElement!=nil)
        {
            [__EndDateItemElement setStringValue:self.EndDate];
        }
             
        DDXMLElement* __StaffIDsItemElement=[__request writeElement:StaffIDs type:[ArrayOfLong class] name:@"StaffIDs" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__StaffIDsItemElement!=nil)
        {
            [self.StaffIDs serialize:__StaffIDsItemElement __request: __request];
        }
             
        DDXMLElement* __ClientIDsItemElement=[__request writeElement:ClientIDs type:[ArrayOfString class] name:@"ClientIDs" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ClientIDsItemElement!=nil)
        {
            [self.ClientIDs serialize:__ClientIDsItemElement __request: __request];
        }


}
@end
