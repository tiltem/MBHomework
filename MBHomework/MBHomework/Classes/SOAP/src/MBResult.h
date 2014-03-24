//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

#import "RequestResultHandler.h"
#import "DDXML.h"



@interface MBResult : NSObject 


@property (retain,nonatomic,getter=getStatus) NSString* Status;

@property (retain,nonatomic,getter=getErrorCode) NSString* ErrorCode;

@property (retain,nonatomic,getter=getMessage) NSString* Message;

@property (retain,nonatomic,getter=getXMLDetail) NSString* XMLDetail;

@property (retain,nonatomic,getter=getResultCount) NSString* ResultCount;

@property (retain,nonatomic,getter=getCurrentPageIndex) NSString* CurrentPageIndex;

@property (retain,nonatomic,getter=getTotalPageCount) NSString* TotalPageCount;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(RequestResultHandler*) __request;
+(MBResult*) createWithXml:(DDXMLElement*)__node __request:(RequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request;
@end