//
//  MBAppointmentsTableViewController.h
//  MBHomework
//
//  Created by Matthew Whitehead on 3/21/14.
//  Copyright (c) 2014 Matthew Whitehead. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBAbstractTableViewController.h"
#import "Staff.h"

@interface MBAppointmentsTableViewController : MBAbstractTableViewController

@property (nonatomic, strong) Staff *staff;

@end
