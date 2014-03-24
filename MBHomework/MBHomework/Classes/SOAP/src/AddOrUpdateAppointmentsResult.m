//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "ArrayOfAppointment.h"
#import "MBResult.h"
#import "Helper.h"
#import "AddOrUpdateAppointmentsResult.h"


@implementation AddOrUpdateAppointmentsResult
    @synthesize Appointments;

+ (AddOrUpdateAppointmentsResult *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
        if([Helper hasValue:__node name:@"Appointments"])
        {
            self.Appointments = (ArrayOfAppointment*)[__request createObject:[Helper getNode:__node name:@"Appointments"] type:[ArrayOfAppointment class]];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{
    [super serialize:__parent __request:__request];

             
        DDXMLElement* __AppointmentsItemElement=[__request writeElement:Appointments type:[ArrayOfAppointment class] name:@"Appointments" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__AppointmentsItemElement!=nil)
        {
            [self.Appointments serialize:__AppointmentsItemElement __request: __request];
        }


}
@end