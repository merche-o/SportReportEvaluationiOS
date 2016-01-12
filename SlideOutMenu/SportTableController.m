//
//  SportTableViewController.m
//  SlideOutMenu
//
//  Created by Jordan Faure on 20/06/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import "SportTableController.h"
#import "SWRevealViewController.h"
#import <RestKit/RestKit.h>
#import "testRest.h"
#import "teamData.h"
#import "playerData.h"
#import "UserData.h"

@interface SportTableController ()

@end

@implementation SportTableController{
    NSArray *sport;
}

- (void)configureRestKit
{
    // initialize AFNetworking HTTPClient
    RKLogConfigureByName("*", RKLogLevelOff);
    //NSURL *baseURL = [NSURL URLWithString:@"http://10.224.9.193:3000/api/"];
    NSURL *baseURL = [NSURL URLWithString:@"http://163.5.84.193:3000/api/"];
    
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    
    // initialize RestKit
    RKObjectManager *objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
    // setup object mappings
    RKObjectMapping *venueMapping = [RKObjectMapping mappingForClass:[testRest class]];
    [venueMapping addAttributeMappingsFromArray:@[@"ID"]];
    [venueMapping addAttributeMappingsFromArray:@[@"DATE"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM1"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM2"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM_NAME1"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM_NAME2"]];

    [venueMapping addAttributeMappingsFromArray:@[@"SCORE1"]];
    [venueMapping addAttributeMappingsFromArray:@[@"SCORE2"]];
    [venueMapping addAttributeMappingsFromArray:@[@"STATUS"]];
    
    
    
    // register mappings with the provider using a response descriptor
    RKResponseDescriptor *responseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                 method:RKRequestMethodGET
                                            pathPattern:@"GAME"
                                                keyPath:@"Users"
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    
    
    [objectManager addResponseDescriptor:responseDescriptor];
    
    venueMapping = [RKObjectMapping mappingForClass:[playerData class]];
    [venueMapping addAttributeMappingsFromArray:@[@"ID"]];
    [venueMapping addAttributeMappingsFromArray:@[@"NAME"]];
    [venueMapping addAttributeMappingsFromArray:@[@"SHOOTS"]];
    [venueMapping addAttributeMappingsFromArray:@[@"PASSES"]];
    [venueMapping addAttributeMappingsFromArray:@[@"POINTS"]];
    [venueMapping addAttributeMappingsFromArray:@[@"POSSESSION_TIME"]];
    [venueMapping addAttributeMappingsFromArray:@[@"AVERAGE_SPEED"]];
    [venueMapping addAttributeMappingsFromArray:@[@"MAX_SPEED"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM_NAME"]];
    [venueMapping addAttributeMappingsFromArray:@[@"POSITION"]];
    [venueMapping addAttributeMappingsFromArray:@[@"SIZE"]];
    [venueMapping addAttributeMappingsFromArray:@[@"AGE"]];
    [venueMapping addAttributeMappingsFromArray:@[@"JERSEY_NUMBER"]];
   
    


    responseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                                      method:RKRequestMethodGET
                                                                 pathPattern:@"playersbyteam"
                                                                     keyPath:@"Users"
                                                                 statusCodes:[NSIndexSet indexSetWithIndex:200]];
    [objectManager addResponseDescriptor:responseDescriptor];

    
    venueMapping = [RKObjectMapping mappingForClass:[teamData class]];
    [venueMapping addAttributeMappingsFromArray:@[@"ID"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM_NAME"]];
    [venueMapping addAttributeMappingsFromArray:@[@"INITIALS"]];
    responseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                                      method:RKRequestMethodGET
                                                                 pathPattern:@"TEAMS/Football"
                                                                     keyPath:@"Users"
                                                                 statusCodes:[NSIndexSet indexSetWithIndex:200]];
    [objectManager addResponseDescriptor:responseDescriptor];
    
    venueMapping = [RKObjectMapping mappingForClass:[teamData class]];
    [venueMapping addAttributeMappingsFromArray:@[@"ID"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM_NAME"]];
    [venueMapping addAttributeMappingsFromArray:@[@"INITIALS"]];
    responseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                                      method:RKRequestMethodGET
                                                                 pathPattern:@"TEAMS/Basketball"
                                                                     keyPath:@"Users"
                                                                 statusCodes:[NSIndexSet indexSetWithIndex:200]];
    [objectManager addResponseDescriptor:responseDescriptor];

    
    
    venueMapping = [RKObjectMapping mappingForClass:[UserData class]];
    [venueMapping addAttributeMappingsFromDictionary:@{
                                                  @"Users.ID":   @"ID",
                                                  @"Users.USER":     @"USER",
                                                  @"Users.PASSWORD":        @"PASSWORD",
                                                  @"Users.EMAIL":        @"EMAIL",
                                                  @"Users.PICTURE":        @"PICTURE",
                                                  @"Users.DATE_CREATION":        @"DATE_CREATION",
                                                  @"Users.CHECK_ACCOUNT":        @"CHECK_ACCOUNT",
                                                  @"Token":        @"Token",
                                                  }];

    
    
    
    
    // register mappings with the provider using a response descriptor
    responseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                 method:RKRequestMethodPOST
                                            pathPattern:@"login"
                                                keyPath:nil
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    
    [objectManager addResponseDescriptor:responseDescriptor];
    
    

    RKObjectMapping *requestMapping = [RKObjectMapping requestMapping]; // objectClass == NSMutableDictionary
    [requestMapping addAttributeMappingsFromArray:@[@"USER", @"PASSWORD", @"EMAIL"]];
    RKRequestDescriptor *requestDescriptor = [RKRequestDescriptor requestDescriptorWithMapping:requestMapping
                                                                                   objectClass:[UserData class] rootKeyPath:nil];
    
    [objectManager addRequestDescriptor: requestDescriptor];
    
    venueMapping = [RKObjectMapping mappingForClass:[UserData class]];
    [venueMapping addAttributeMappingsFromDictionary:@{
                                                       @"Users.ID":   @"ID",
                                                       @"Users.USER":     @"USER",
                                                       @"Users.PASSWORD":        @"PASSWORD",
                                                       @"Users.EMAIL":        @"EMAIL",
                                                       @"Users.PICTURE":        @"PICTURE",
                                                       @"Users.DATE_CREATION":        @"DATE_CREATION",
                                                       @"Users.CHECK_ACCOUNT":        @"CHECK_ACCOUNT",
                                                       @"Token":        @"Token",
                                                       }];
    
    
    
    
    
    // register mappings with the provider using a response descriptor
    responseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                 method:RKRequestMethodPOST
                                            pathPattern:@"signup"
                                                keyPath:nil
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    
    [objectManager addResponseDescriptor:responseDescriptor];
    
    
    
  //  requestMapping = [RKObjectMapping requestMapping]; // objectClass == NSMutableDictionary
    //[requestMapping addAttributeMappingsFromArray:@[@"USER", @"PASSWORD", @"EMAIL"]];
 //requestDescriptor = [RKRequestDescriptor requestDescriptorWithMapping:requestMapping
      //                                                                          objectClass:[UserData class] rootKeyPath:nil];
    
    [objectManager addRequestDescriptor: requestDescriptor];


    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [self.navigationController.navigationBar setBarTintColor:[UIColor viewFlipsideBackgroundColor]];
    self.title = @"Home";
    
    sport = [NSArray arrayWithObjects:@"Soccer", @"Basketball", @"Handball", @"Foot US", @"Hockey", nil];

    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self configureRestKit];

    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [sport count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    static NSString *simpleTableIdentifier = @"Sport";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

    cell.textLabel.text = [sport objectAtIndex:indexPath.row];
    [cell.textLabel setTextAlignment:UITextAlignmentCenter];
    [cell.textLabel setFont:[UIFont systemFontOfSize:32]];

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 88;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"GameTable"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        GameListController *myVC = [segue destinationViewController];
        myVC.categories = indexPath.row;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
