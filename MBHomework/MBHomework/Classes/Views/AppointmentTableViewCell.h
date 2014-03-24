//
//  AppointmentTableViewCell.h
//  MBHomework
//
//  Created by Matthew Whitehead on 3/21/14.
//  Copyright (c) 2014 Matthew Whitehead. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppointmentTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *lblStartEndTime;
@property (strong, nonatomic) IBOutlet UILabel *lblDay;
@property (strong, nonatomic) IBOutlet UILabel *lblSessionType;
@property (strong, nonatomic) IBOutlet UILabel *lblClientName;



@end
