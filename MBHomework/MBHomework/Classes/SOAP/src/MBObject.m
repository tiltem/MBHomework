//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "Site.h"
#import "ArrayOfString.h"
#import "Helper.h"
#import "MBObject.h"


@implementation MBObject
    @synthesize Site;
    @synthesize Messages;
    @synthesize Execute;
    @synthesize ErrorCode;

+ (MBObject *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
        if([Helper hasValue:__node name:@"Site"])
        {
            self.Site = (Site*)[__request createObject:[Helper getNode:__node name:@"Site"] type:[Site class]];
        }
        if([Helper hasValue:__node name:@"Messages"])
        {
            self.Messages = (ArrayOfString*)[__request createObject:[Helper getNode:__node name:@"Messages"] type:[ArrayOfString class]];
        }
        if([Helper hasValue:__node name:@"Execute"])
        {
            self.Execute = [[Helper getNode:__node name:@"Execute"] stringValue];
        }
        if([Helper hasValue:__node name:@"ErrorCode"])
        {
            self.ErrorCode = [[Helper getNode:__node name:@"ErrorCode"] stringValue];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{

             
        DDXMLElement* __SiteItemElement=[__request writeElement:Site type:[Site class] name:@"Site" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__SiteItemElement!=nil)
        {
            [self.Site serialize:__SiteItemElement __request: __request];
        }
             
        DDXMLElement* __MessagesItemElement=[__request writeElement:Messages type:[ArrayOfString class] name:@"Messages" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__MessagesItemElement!=nil)
        {
            [self.Messages serialize:__MessagesItemElement __request: __request];
        }
             
        DDXMLElement* __ExecuteItemElement=[__request writeElement:Execute type:[NSString class] name:@"Execute" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ExecuteItemElement!=nil)
        {
            [__ExecuteItemElement setStringValue:self.Execute];
        }
             
        DDXMLElement* __ErrorCodeItemElement=[__request writeElement:ErrorCode type:[NSString class] name:@"ErrorCode" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ErrorCodeItemElement!=nil)
        {
            [__ErrorCodeItemElement setStringValue:self.ErrorCode];
        }


}
@end