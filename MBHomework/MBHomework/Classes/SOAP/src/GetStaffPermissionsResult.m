//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "ArrayOfPermission.h"
#import "MBResult.h"
#import "Helper.h"
#import "GetStaffPermissionsResult.h"


@implementation GetStaffPermissionsResult
    @synthesize Permissions;

+ (GetStaffPermissionsResult *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
        if([Helper hasValue:__node name:@"Permissions"])
        {
            self.Permissions = (ArrayOfPermission*)[__request createObject:[Helper getNode:__node name:@"Permissions"] type:[ArrayOfPermission class]];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{
    [super serialize:__parent __request:__request];

             
        DDXMLElement* __PermissionsItemElement=[__request writeElement:Permissions type:[ArrayOfPermission class] name:@"Permissions" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__PermissionsItemElement!=nil)
        {
            [self.Permissions serialize:__PermissionsItemElement __request: __request];
        }


}
@end