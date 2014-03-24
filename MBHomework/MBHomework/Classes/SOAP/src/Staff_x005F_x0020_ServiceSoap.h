//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------



#import <Foundation/Foundation.h>

#import "GetStaffResult.h"
#import "GetStaffRequest.h"
#import "GetStaffPermissionsResult.h"
#import "GetStaffPermissionsRequest.h"
#import "AddOrUpdateStaffResult.h"
#import "AddOrUpdateStaffRequest.h"
#import "GetStaffImgURLResult.h"
#import "GetStaffImgURLRequest.h"
#import "DDXML.h"

@class RequestResultHandler;



@interface Staff_x005F_x0020_ServiceSoap : NSObject
    
@property (retain, nonatomic) NSDictionary* Headers;
@property (retain, nonatomic) NSString* Url;
@property (nonatomic) BOOL ShouldAddAdornments;

- (id) init;
- (id) initWithUrl: (NSString*) url;

-(NSMutableURLRequest*) createGetStaffRequest:(GetStaffRequest*) Request __request:(RequestResultHandler*) __request;
-(GetStaffResult*) GetStaff:(GetStaffRequest*) Request __error:(NSError**) __error;
-(NSMutableURLRequest*) createGetStaffPermissionsRequest:(GetStaffPermissionsRequest*) Request __request:(RequestResultHandler*) __request;
-(GetStaffPermissionsResult*) GetStaffPermissions:(GetStaffPermissionsRequest*) Request __error:(NSError**) __error;
-(NSMutableURLRequest*) createAddOrUpdateStaffRequest:(AddOrUpdateStaffRequest*) Request __request:(RequestResultHandler*) __request;
-(AddOrUpdateStaffResult*) AddOrUpdateStaff:(AddOrUpdateStaffRequest*) Request __error:(NSError**) __error;
-(NSMutableURLRequest*) createGetStaffImgURLRequest:(GetStaffImgURLRequest*) Request __request:(RequestResultHandler*) __request;
-(GetStaffImgURLResult*) GetStaffImgURL:(GetStaffImgURLRequest*) Request __error:(NSError**) __error;
-(void) sendImplementation:(NSMutableURLRequest*) request requestMgr:(RequestResultHandler*) requestMgr; 

@end