//
//  MBTableViewController.m
//  MBHomework
//
//  Created by Matthew Whitehead on 3/19/14.
//  Copyright (c) 2014 Matthew Whitehead. All rights reserved.
//

#import "MBStaffTableViewController.h"
#import "APIClient.h"
#import "Staff.h"
#import "MBProgressHUD.h"
#import "MBAppointmentsTableViewController.h"
#import "StaffTableViewCell.h"
#import "MSCellAccessory.h"

@interface MBStaffTableViewController ()

@end

@implementation MBStaffTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self getStaff];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refreshTriggered{
    if (self.refreshControl.refreshing) {
        [self getStaff];
    }
}


#pragma mark - Table view data source
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *reuseId = @"staffCell";
    
    StaffTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId forIndexPath:indexPath];
    
    // Configure the cell...
    cell.accessoryView = [MSCellAccessory accessoryWithType:FLAT_DISCLOSURE_INDICATOR color:[UIColor colorWithRed:143/255.0 green:198/255.0 blue:140/255.0 alpha:1.0]];
    
    Staff *staff = [self.dataArray objectAtIndex:indexPath.row];
    cell.textLabel.text = staff.Name;
    cell.detailTextLabel.text = staff.Address;
        
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MBAppointmentsTableViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"AppointmentTableVC"];
    
    controller.staff = [self.dataArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:controller animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - API Calls

-(void)getStaff{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [[APIClient sharedAPIClient] getStaffSuccess:^(NSArray *staffArray){
        
        self.dataArray = [staffArray mutableCopy];
        [MBProgressHUD hideAllHUDsForView:self.view animated:YES];

        [self.tableView reloadData];
        [self.refreshControl endRefreshing];
        
    } failure:^(NSError *error){
        DLog(@"%@", error);
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error Occured" message:error.localizedDescription delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
        [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
        [self.refreshControl endRefreshing];
    }];
}


@end
