//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "SoapError.h"

@implementation SoapError
@synthesize Details;

-(id)initWithDetails:(NSString*) faultString details:(id)details;
{
    if(self = [self initWithDomain:faultString code:0 userInfo:nil])
    {
        self.Details=details;
        
    }
    return self;
}
@end