//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>
    
@interface SoapError : NSError

@property (retain,nonatomic) id Details;
    
-(id)initWithDetails:(NSString*) faultString details:(id)details;
@end
