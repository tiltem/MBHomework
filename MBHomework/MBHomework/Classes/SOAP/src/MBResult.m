//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "Helper.h"
#import "MBResult.h"


@implementation MBResult
    @synthesize Status;
    @synthesize ErrorCode;
    @synthesize Message;
    @synthesize XMLDetail;
    @synthesize ResultCount;
    @synthesize CurrentPageIndex;
    @synthesize TotalPageCount;

+ (MBResult *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
        if([Helper hasValue:__node name:@"Status"])
        {
            self.Status = [[Helper getNode:__node name:@"Status"] stringValue];
        }
        if([Helper hasValue:__node name:@"ErrorCode"])
        {
            self.ErrorCode = [[Helper getNode:__node name:@"ErrorCode"] stringValue];
        }
        if([Helper hasValue:__node name:@"Message"])
        {
            self.Message = [[Helper getNode:__node name:@"Message"] stringValue];
        }
        if([Helper hasValue:__node name:@"XMLDetail"])
        {
            self.XMLDetail = [[Helper getNode:__node name:@"XMLDetail"] stringValue];
        }
        if([Helper hasValue:__node name:@"ResultCount"])
        {
            self.ResultCount = [[Helper getNode:__node name:@"ResultCount"] stringValue];
        }
        if([Helper hasValue:__node name:@"CurrentPageIndex"])
        {
            self.CurrentPageIndex = [[Helper getNode:__node name:@"CurrentPageIndex"] stringValue];
        }
        if([Helper hasValue:__node name:@"TotalPageCount"])
        {
            self.TotalPageCount = [[Helper getNode:__node name:@"TotalPageCount"] stringValue];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{

             
        DDXMLElement* __StatusItemElement=[__request writeElement:Status type:[NSString class] name:@"Status" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__StatusItemElement!=nil)
        {
            [__StatusItemElement setStringValue:self.Status];
        }
             
        DDXMLElement* __ErrorCodeItemElement=[__request writeElement:ErrorCode type:[NSString class] name:@"ErrorCode" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ErrorCodeItemElement!=nil)
        {
            [__ErrorCodeItemElement setStringValue:self.ErrorCode];
        }
             
        DDXMLElement* __MessageItemElement=[__request writeElement:Message type:[NSString class] name:@"Message" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__MessageItemElement!=nil)
        {
            [__MessageItemElement setStringValue:self.Message];
        }
             
        DDXMLElement* __XMLDetailItemElement=[__request writeElement:XMLDetail type:[NSString class] name:@"XMLDetail" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__XMLDetailItemElement!=nil)
        {
            [__XMLDetailItemElement setStringValue:self.XMLDetail];
        }
             
        DDXMLElement* __ResultCountItemElement=[__request writeElement:ResultCount type:[NSString class] name:@"ResultCount" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ResultCountItemElement!=nil)
        {
            [__ResultCountItemElement setStringValue:self.ResultCount];
        }
             
        DDXMLElement* __CurrentPageIndexItemElement=[__request writeElement:CurrentPageIndex type:[NSString class] name:@"CurrentPageIndex" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__CurrentPageIndexItemElement!=nil)
        {
            [__CurrentPageIndexItemElement setStringValue:self.CurrentPageIndex];
        }
             
        DDXMLElement* __TotalPageCountItemElement=[__request writeElement:TotalPageCount type:[NSString class] name:@"TotalPageCount" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__TotalPageCountItemElement!=nil)
        {
            [__TotalPageCountItemElement setStringValue:self.TotalPageCount];
        }


}
@end
