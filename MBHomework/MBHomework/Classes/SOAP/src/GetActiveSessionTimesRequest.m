//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "ArrayOfInt.h"
#import "MBRequest.h"
#import "Helper.h"
#import "GetActiveSessionTimesRequest.h"


@implementation GetActiveSessionTimesRequest
    @synthesize ScheduleType;
    @synthesize SessionTypeIDs;
    @synthesize StartTime;
    @synthesize EndTime;

+ (GetActiveSessionTimesRequest *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
        if([Helper hasValue:__node name:@"ScheduleType"])
        {
            self.ScheduleType = [[Helper getNode:__node name:@"ScheduleType"] stringValue];
        }
        if([Helper hasValue:__node name:@"SessionTypeIDs"])
        {
            self.SessionTypeIDs = (ArrayOfInt*)[__request createObject:[Helper getNode:__node name:@"SessionTypeIDs"] type:[ArrayOfInt class]];
        }
        if([Helper hasValue:__node name:@"StartTime"])
        {
            self.StartTime = [[Helper getNode:__node name:@"StartTime"] stringValue];
        }
        if([Helper hasValue:__node name:@"EndTime"])
        {
            self.EndTime = [[Helper getNode:__node name:@"EndTime"] stringValue];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{
    [super serialize:__parent __request:__request];

             
        DDXMLElement* __ScheduleTypeItemElement=[__request writeElement:ScheduleType type:[NSString class] name:@"ScheduleType" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ScheduleTypeItemElement!=nil)
        {
            [__ScheduleTypeItemElement setStringValue:self.ScheduleType];
        }
             
        DDXMLElement* __SessionTypeIDsItemElement=[__request writeElement:SessionTypeIDs type:[ArrayOfInt class] name:@"SessionTypeIDs" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__SessionTypeIDsItemElement!=nil)
        {
            [self.SessionTypeIDs serialize:__SessionTypeIDsItemElement __request: __request];
        }
             
        DDXMLElement* __StartTimeItemElement=[__request writeElement:StartTime type:[NSString class] name:@"StartTime" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__StartTimeItemElement!=nil)
        {
            [__StartTimeItemElement setStringValue:self.StartTime];
        }
             
        DDXMLElement* __EndTimeItemElement=[__request writeElement:EndTime type:[NSString class] name:@"EndTime" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__EndTimeItemElement!=nil)
        {
            [__EndTimeItemElement setStringValue:self.EndTime];
        }


}
@end