//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "ArrayOfInt.h"
#import "Helper.h"
#import "UserCredentials.h"


@implementation UserCredentials
    @synthesize Username;
    @synthesize Password;
    @synthesize SiteIDs;

+ (UserCredentials *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
    if(self = [self init])
    {
        if([Helper hasValue:__node name:@"Username"])
        {
            self.Username = [[Helper getNode:__node name:@"Username"] stringValue];
        }
        if([Helper hasValue:__node name:@"Password"])
        {
            self.Password = [[Helper getNode:__node name:@"Password"] stringValue];
        }
        if([Helper hasValue:__node name:@"SiteIDs"])
        {
            self.SiteIDs = (ArrayOfInt*)[__request createObject:[Helper getNode:__node name:@"SiteIDs"] type:[ArrayOfInt class]];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{

             
        DDXMLElement* __UsernameItemElement=[__request writeElement:Username type:[NSString class] name:@"Username" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__UsernameItemElement!=nil)
        {
            [__UsernameItemElement setStringValue:self.Username];
        }
             
        DDXMLElement* __PasswordItemElement=[__request writeElement:Password type:[NSString class] name:@"Password" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__PasswordItemElement!=nil)
        {
            [__PasswordItemElement setStringValue:self.Password];
        }
             
        DDXMLElement* __SiteIDsItemElement=[__request writeElement:SiteIDs type:[ArrayOfInt class] name:@"SiteIDs" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__SiteIDsItemElement!=nil)
        {
            [self.SiteIDs serialize:__SiteIDsItemElement __request: __request];
        }


}
@end
