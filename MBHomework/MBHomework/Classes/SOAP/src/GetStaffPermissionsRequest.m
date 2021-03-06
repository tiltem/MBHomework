//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "MBRequest.h"
#import "Helper.h"
#import "GetStaffPermissionsRequest.h"


@implementation GetStaffPermissionsRequest
    @synthesize StaffID;

+ (GetStaffPermissionsRequest *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
        if([Helper hasValue:__node name:@"StaffID"])
        {
            self.StaffID = [[Helper getNode:__node name:@"StaffID"] stringValue];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{
    [super serialize:__parent __request:__request];

             
        DDXMLElement* __StaffIDItemElement=[__request writeElement:StaffID type:[NSString class] name:@"StaffID" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__StaffIDItemElement!=nil)
        {
            [__StaffIDItemElement setStringValue:self.StaffID];
        }


}
@end
