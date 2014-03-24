//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "ArrayOfStaff.h"
#import "MBRequest.h"
#import "Helper.h"
#import "AddOrUpdateStaffRequest.h"


@implementation AddOrUpdateStaffRequest
    @synthesize UpdateAction;
    @synthesize Test;
    @synthesize Staff;

+ (AddOrUpdateStaffRequest *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
        if([Helper hasValue:__node name:@"UpdateAction"])
        {
            self.UpdateAction = [[Helper getNode:__node name:@"UpdateAction"] stringValue];
        }
        if([Helper hasValue:__node name:@"Test"])
        {
            self.Test = [[Helper getNode:__node name:@"Test"] stringValue];
        }
        if([Helper hasValue:__node name:@"Staff"])
        {
            self.Staff = (ArrayOfStaff*)[__request createObject:[Helper getNode:__node name:@"Staff"] type:[ArrayOfStaff class]];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{
    [super serialize:__parent __request:__request];

             
        DDXMLElement* __UpdateActionItemElement=[__request writeElement:UpdateAction type:[NSString class] name:@"UpdateAction" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__UpdateActionItemElement!=nil)
        {
            [__UpdateActionItemElement setStringValue:self.UpdateAction];
        }
             
        DDXMLElement* __TestItemElement=[__request writeElement:Test type:[NSString class] name:@"Test" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__TestItemElement!=nil)
        {
            [__TestItemElement setStringValue:self.Test];
        }
             
        DDXMLElement* __StaffItemElement=[__request writeElement:Staff type:[ArrayOfStaff class] name:@"Staff" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__StaffItemElement!=nil)
        {
            [self.Staff serialize:__StaffItemElement __request: __request];
        }


}
@end