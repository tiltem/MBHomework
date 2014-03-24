//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "Helper.h"
#import "CustomClientField.h"


@implementation CustomClientField
    @synthesize ID;
    @synthesize DataType;
    @synthesize Name;
    @synthesize Value;

+ (CustomClientField *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
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
        if([Helper hasValue:__node name:@"ID"])
        {
            self.ID = [[Helper getNode:__node name:@"ID"] stringValue];
        }
        if([Helper hasValue:__node name:@"DataType"])
        {
            self.DataType = [[Helper getNode:__node name:@"DataType"] stringValue];
        }
        if([Helper hasValue:__node name:@"Name"])
        {
            self.Name = [[Helper getNode:__node name:@"Name"] stringValue];
        }
        if([Helper hasValue:__node name:@"Value"])
        {
            self.Value = [[Helper getNode:__node name:@"Value"] stringValue];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{

             
        DDXMLElement* __IDItemElement=[__request writeElement:ID type:[NSString class] name:@"ID" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__IDItemElement!=nil)
        {
            [__IDItemElement setStringValue:self.ID];
        }
             
        DDXMLElement* __DataTypeItemElement=[__request writeElement:DataType type:[NSString class] name:@"DataType" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__DataTypeItemElement!=nil)
        {
            [__DataTypeItemElement setStringValue:self.DataType];
        }
             
        DDXMLElement* __NameItemElement=[__request writeElement:Name type:[NSString class] name:@"Name" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__NameItemElement!=nil)
        {
            [__NameItemElement setStringValue:self.Name];
        }
             
        DDXMLElement* __ValueItemElement=[__request writeElement:Value type:[NSString class] name:@"Value" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ValueItemElement!=nil)
        {
            [__ValueItemElement setStringValue:self.Value];
        }


}
@end
