//
//  APIClient.h
//  MBHomework
//
//  Created by Matthew Whitehead on 3/19/14.
//  Copyright (c) 2014 Matthew Whitehead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Staff_x005F_x0020_ServiceSoap.h"
#import "Staff.h"
#import "Appointment_x005F_x0020_ServiceSoap.h"

@interface APIClient : NSObject


+(APIClient*)sharedAPIClient;


- (void)getStaffSuccess:(void (^)(NSArray *staffArray))success failure:(void (^)(NSError *error))failure;

- (void)getAppointmentsForStaff:(Staff*)staff startDate:(NSDate*)startDate endDate:(NSDate*)endDate success:(void (^)(NSArray *staffArray))success failure:(void (^)(NSError *error))failure;

@end
