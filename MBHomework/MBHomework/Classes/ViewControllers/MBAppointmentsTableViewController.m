//
//  MBAppointmentsTableViewController.m
//  MBHomework
//
//  Created by Matthew Whitehead on 3/21/14.
//  Copyright (c) 2014 Matthew Whitehead. All rights reserved.
//

#import "MBAppointmentsTableViewController.h"
#import "AppointmentTableViewCell.h"
#import "Constants.h"
#import "MBProgressHUD.h"
#import "APIClient.h"
#import "Appointment.h"
#import "SessionType.h"
#import "Client.h"
#import "DFDateFormatterFactory.h"

#define kDatePickerID @"datePicker"    // date Picker cell
#define kDateCellID @"dateCell"    // the cells with the start or end date

#define kDatePickerTag 99

@interface MBAppointmentsTableViewController (){
    NSDate *startDate;
    NSDate *endDate;
}

// keep track which indexPath points to the cell with UIDatePicker
@property (nonatomic, strong) NSIndexPath *datePickerIndexPath;

@property (assign) NSInteger pickerCellRowHeight;

@end

@implementation MBAppointmentsTableViewController

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
    
    NSDateFormatter *formatter = [[DFDateFormatterFactory sharedFactory] dateFormatterWithFormat:kDateFormatYMD];
    startDate = [formatter dateFromString:@"2014-01-03"];
    endDate = [formatter dateFromString:@"2014-01-03"];
    [self getAppointments];
    
    self.title = _staff.Name;
    
    
    // obtain the picker view cell's height, works because the cell was pre-defined in our storyboard
    UITableViewCell *pickerViewCellToCheck = [self.tableView dequeueReusableCellWithIdentifier:kDatePickerID];
    self.pickerCellRowHeight = pickerViewCellToCheck.frame.size.height;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refreshTriggered{
    if (self.refreshControl.refreshing) {
        [self getAppointments];
    }
}

#pragma mark - Inline DatePicker
/*! Determines if the given indexPath has a cell below it with a UIDatePicker.
 @param indexPath The indexPath to check if its cell has a UIDatePicker below it.
 */
- (BOOL)hasPickerForIndexPath:(NSIndexPath *)indexPath
{
    BOOL hasDatePicker = NO;
    
    NSInteger targetedRow = indexPath.row;
    targetedRow++;
    
    UITableViewCell *checkDatePickerCell =
    [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:targetedRow inSection:0]];
    UIDatePicker *checkDatePicker = (UIDatePicker *)[checkDatePickerCell viewWithTag:kDatePickerTag];
    
    hasDatePicker = (checkDatePicker != nil);
    return hasDatePicker;
}

/*! Updates the UIDatePicker's value to match with the date of the cell above it.
 */
- (void)updateDatePicker
{
    if (self.datePickerIndexPath != nil)
    {
        UITableViewCell *associatedDatePickerCell = [self.tableView cellForRowAtIndexPath:self.datePickerIndexPath];
        
        UIDatePicker *targetedDatePicker = (UIDatePicker *)[associatedDatePickerCell viewWithTag:kDatePickerTag];
        if (targetedDatePicker != nil)
        {
            //If indexPath.row == 1 it is for startDate else it is endDate
            NSDate * date = self.datePickerIndexPath.row == 1 ? startDate : endDate;
            [targetedDatePicker setDate:date animated:NO];
        }
    }
}

/*! Determines if the UITableViewController has a UIDatePicker in any of its cells.
 */
- (BOOL)hasInlineDatePicker
{
    return (self.datePickerIndexPath != nil);
}

/*! Determines if the given indexPath points to a cell that contains the UIDatePicker.
 @param indexPath The indexPath to check if it represents a cell with the UIDatePicker.
 */
- (BOOL)indexPathHasPicker:(NSIndexPath *)indexPath
{
    return ([self hasInlineDatePicker] && self.datePickerIndexPath.row == indexPath.row);
}

/*! Adds or removes a UIDatePicker cell below the given indexPath.
 @param indexPath The indexPath to reveal the UIDatePicker.
 */
- (void)toggleDatePickerForSelectedIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView beginUpdates];
    
    NSArray *indexPaths = @[[NSIndexPath indexPathForRow:indexPath.row + 1 inSection:0]];
    
    // check if 'indexPath' has an attached date picker below it
    if ([self hasPickerForIndexPath:indexPath])
    {
        // found a picker below it, so remove it
        [self.tableView deleteRowsAtIndexPaths:indexPaths
                              withRowAnimation:UITableViewRowAnimationFade];
    }
    else
    {
        // didn't find a picker below it, so we should insert it
        [self.tableView insertRowsAtIndexPaths:indexPaths
                              withRowAnimation:UITableViewRowAnimationFade];
    }
    
    [self.tableView endUpdates];
}

/*! Reveals the date picker inline for the given indexPath, called by "didSelectRowAtIndexPath".
 @param indexPath The indexPath to reveal the UIDatePicker.
 */
- (void)displayInlineDatePickerForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // display the date picker inline with the table content
    [self.tableView beginUpdates];
    
    BOOL before = NO;   // indicates if the date picker is below "indexPath", help us determine which row to reveal
    if ([self hasInlineDatePicker])
    {
        before = self.datePickerIndexPath.row < indexPath.row;
    }
    
    BOOL sameCellClicked = (self.datePickerIndexPath.row - 1 == indexPath.row);
    
    // remove any date picker cell if it exists
    if ([self hasInlineDatePicker])
    {
        [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:self.datePickerIndexPath.row inSection:0]]
                              withRowAnimation:UITableViewRowAnimationFade];
        self.datePickerIndexPath = nil;
        
//        Update Appointments Based on selected dates
        [self getAppointments];
    }
    
    if (!sameCellClicked)
    {
        // hide the old date picker and display the new one
        NSInteger rowToReveal = (before ? indexPath.row - 1 : indexPath.row);
        NSIndexPath *indexPathToReveal = [NSIndexPath indexPathForRow:rowToReveal inSection:0];
        
        [self toggleDatePickerForSelectedIndexPath:indexPathToReveal];
        self.datePickerIndexPath = [NSIndexPath indexPathForRow:indexPathToReveal.row + 1 inSection:0];
    }
    
    // always deselect the row containing the start or end date
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.tableView endUpdates];
    
    // inform our date picker of the current date to match the current cell
    [self updateDatePicker];
}


/*! User chose to change the date by changing the values inside the UIDatePicker.
 @param sender The sender for this action: UIDatePicker.
 */
- (IBAction)dateAction:(id)sender
{
    UIDatePicker *targetedDatePicker = sender;
    
    if (self.datePickerIndexPath.row == 1) { //StartDate
        startDate = targetedDatePicker.date;
    }else{
        endDate = targetedDatePicker.date;
    }
}


#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return [self hasInlineDatePicker] ? 3 : 2;
    }
    return self.dataArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //Date Range Section
    if (indexPath.section == 0) {
        return ([self indexPathHasPicker:indexPath] ? self.pickerCellRowHeight : 50);
    }
    return self.tableView.rowHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    
    NSDateFormatter *dayFormatter = [[DFDateFormatterFactory sharedFactory] dateFormatterWithDateStyle:NSDateFormatterMediumStyle andTimeStyle:NSDateFormatterNoStyle];
    
    if (indexPath.section == 0) {
        NSString *reuseId = [self indexPathHasPicker:indexPath] ? kDatePickerID : kDateCellID;
        
        cell = [tableView dequeueReusableCellWithIdentifier:reuseId forIndexPath:indexPath];
        
        if ([reuseId isEqualToString:kDateCellID])
        {
            cell.textLabel.text = indexPath.row == 0 ? @"From" : @"To";
            cell.detailTextLabel.text = indexPath.row == 0 ? [dayFormatter stringFromDate:startDate] : [dayFormatter stringFromDate:endDate];
        }
    }else{
        NSString *reuseId = @"appointmentCell";
        
        AppointmentTableViewCell *cellAppointment = [tableView dequeueReusableCellWithIdentifier:reuseId forIndexPath:indexPath];
        
        // Configure the cell...
        Appointment *appointment = [self.dataArray objectAtIndex:indexPath.row];
        
        NSDateFormatter *formatter = [[DFDateFormatterFactory sharedFactory] dateFormatterWithFormat:kDateFormatYMDHMS];
        NSDate *start = [formatter dateFromString:appointment.StartDateTime];
        NSDate *end = [formatter dateFromString:appointment.EndDateTime];
        
        
        NSDateFormatter *timeFormatter = [[DFDateFormatterFactory sharedFactory] dateFormatterWithDateStyle:NSDateFormatterNoStyle andTimeStyle:NSDateFormatterShortStyle];
        
        cellAppointment.lblStartEndTime.text = [NSString stringWithFormat:@"%@ - %@", [[timeFormatter stringFromDate:start] lowercaseString], [[timeFormatter stringFromDate:end] lowercaseString]];
        cellAppointment.lblDay.text = [dayFormatter stringFromDate:start];
        cellAppointment.lblSessionType.text = appointment.SessionType.Name;
        cellAppointment.lblClientName.text = [NSString stringWithFormat:@"%@ %@",appointment.Client.FirstName, appointment.Client.LastName];
        cellAppointment.selectionStyle = UITableViewCellSelectionStyleNone;
        
        cell = cellAppointment;
    }
    return cell;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return section ? @"Appointments" : @"Date Range";
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (indexPath.section == 0 && [cell.reuseIdentifier  isEqualToString: kDateCellID]) {
        [self displayInlineDatePickerForRowAtIndexPath:indexPath];
    }
}


#pragma mark - API Calls

-(void)getAppointments{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    [[APIClient sharedAPIClient] getAppointmentsForStaff:_staff startDate:startDate endDate:endDate success:^(NSArray *appointmentArray){
        
        self.dataArray = [appointmentArray mutableCopy];
        [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
        
        [self.tableView reloadData];
        [self.refreshControl endRefreshing];
        
        if (!self.dataArray.count) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Appointments" message:@"There are no appointments within selected date range" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            [alert show];
        }
    } failure:^(NSError *error){
        DLog(@"%@", error);
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error Occured" message:error.localizedDescription delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
        [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
        [self.refreshControl endRefreshing];
    }];
}

@end
