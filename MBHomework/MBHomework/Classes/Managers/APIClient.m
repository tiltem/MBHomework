//
//  APIClient.m
//  MBHomework
//
//  Created by Matthew Whitehead on 3/19/14.
//  Copyright (c) 2014 Matthew Whitehead. All rights reserved.
//

#import "APIClient.h"
#import "Constants.h"
#import "SourceCredentials.h"
#import "ArrayOfInt.h"
#import "Staff.h"
#import "ArrayOfStaff.h"
#import "StaffCredentials.h"
#import "ArrayOfAppointment.h"
#import "Appointment.h"
#import "DFDateFormatterFactory.h"

@implementation APIClient

+ (APIClient*)sharedAPIClient {
    static dispatch_once_t predicate;
    static APIClient *instance = nil;
    dispatch_once(&predicate, ^{
        
        instance = [[APIClient alloc] init];

    });
    return instance;
}

//Source Credentials for given site
-(SourceCredentials*)getSourceCredentials{
    SourceCredentials *credentials = [[SourceCredentials alloc] init];
    [credentials setSourceName:@"MBO.Matthew.Whitehead"];
    [credentials setPassword:@"HFVrASRG5G7MjxmFu0AywKbRfkI="];
    [credentials setSiteIDs:[ArrayOfInt arrayWithObject:@"-31100"]];
    return credentials;
}


- (void)getStaffSuccess:(void (^)(NSArray *staffArray))success failure:(void (^)(NSError *error))failure{
    Staff_x005F_x0020_ServiceSoap* service = [[Staff_x005F_x0020_ServiceSoap alloc]init];
    GetStaffRequest *request = [[GetStaffRequest alloc] init];
    
    [request setSourceCredentials:[self getSourceCredentials]];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        __block NSError *error = nil;
        GetStaffResult *staffResult = [service GetStaff:request __error:&error];
        
        if ([staffResult.ErrorCode isEqualToString:kSuccessCode]) {
            NSMutableArray *staffArray = [[NSMutableArray alloc] initWithCapacity:0];
            //remove inactive staff (ID <= 0)
#warning            Staff with ID = 1 seems strange so may need to be removed
            for (Staff *staff in staffResult.StaffMembers.items) {
                if ([staff.ID intValue] > 0) {
                    [staffArray addObject:staff];
                }
            }
            //Sort by Staff Member Name
            [staffArray sortUsingComparator:^NSComparisonResult(Staff *obj1, Staff *obj2){
                return [obj1.Name compare:obj2.Name options:NSNumericSearch];
            }];
            dispatch_async(dispatch_get_main_queue(), ^(void){
                success(staffArray);
            });
        }else{
            dispatch_async(dispatch_get_main_queue(), ^(void){
                if (!error) {
                    error = [NSError errorWithDomain:staffResult.Status code:[staffResult.ErrorCode intValue] userInfo:@{NSLocalizedDescriptionKey: staffResult.Message}];
                }
                failure(error);
            });
        }
            
        
    });
    
}


- (void)getAppointmentsForStaff:(Staff*)staff startDate:(NSDate*)startDate endDate:(NSDate*)endDate success:(void (^)(NSArray *staffArray))success failure:(void (^)(NSError *error))failure{
    Appointment_x005F_x0020_ServiceSoap *service = [[Appointment_x005F_x0020_ServiceSoap alloc] init];
    
    GetStaffAppointmentsRequest *request = [[GetStaffAppointmentsRequest alloc] init];

    [request setSourceCredentials:[self getSourceCredentials]];
    
    StaffCredentials *credentials = [[StaffCredentials alloc] init];
    [credentials setUsername:[NSString stringWithFormat:@"%@.%@", staff.FirstName, staff.LastName]];

    NSString *password = [NSString stringWithFormat:@"%@%@%@",
                          [[staff.FirstName substringToIndex:1] lowercaseString],
                          [[staff.LastName substringToIndex:1]lowercaseString],
                          staff.ID];
    [credentials setPassword:password];

    [credentials setSiteIDs:[ArrayOfInt arrayWithObject:@"-31100"]];
    
    [request setStaffCredentials:credentials];
    

    NSDateFormatter *formatter = [[DFDateFormatterFactory sharedFactory] dateFormatterWithFormat:kDateFormatYMD];
    NSString *startDateStr = [formatter stringFromDate:startDate];
    NSString *endDateStr = [formatter stringFromDate:endDate];
    
    [request setStartDate:startDateStr];
    [request setEndDate:endDateStr];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        __block NSError *error = nil;
        GetStaffAppointmentsResult *appointmentResult = [service GetStaffAppointments:request __error:&error];
        
        if ([appointmentResult.ErrorCode isEqualToString:kSuccessCode]) {
            
            //Sort by Appointment Start Time
            [appointmentResult.Appointments.items sortUsingComparator:^NSComparisonResult(Appointment *obj1, Appointment *obj2){
                return [obj1.StartDateTime compare:obj2.StartDateTime options:NSNumericSearch];
            }];
            
            dispatch_async(dispatch_get_main_queue(), ^(void){
                success(appointmentResult.Appointments.items);
            });
            
        }else{
            dispatch_async(dispatch_get_main_queue(), ^(void){
                if (!error) {
                    error = [NSError errorWithDomain:appointmentResult.Status code:[appointmentResult.ErrorCode intValue] userInfo:@{NSLocalizedDescriptionKey: appointmentResult.Message}];
                }
                failure(error);
            });
        }
        
        
    });
}

@end