//
//  StaffTableViewCell.m
//  MBHomework
//
//  Created by Matthew Whitehead on 3/19/14.
//  Copyright (c) 2014 Matthew Whitehead. All rights reserved.
//

#import "StaffTableViewCell.h"

@implementation StaffTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end