//
//  GameListController.m
//  SlideOutMenu
//
//  Created by Jordan Faure on 20/06/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import "GameListController.h"
#import <RestKit/RestKit.h>
#import "testRest.h"

@interface GameListController ()

@end

@implementation GameListController {
    NSArray *match;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    [self configureRestKit];
    [self loadRest];
    
  /*  NSLog(@"%d",self.categories);
    if (self.categories == 0)
    {
        NSLog(@"%@",_rest.firstObject);
        match =  _rest;//[NSArray arrayWithObjects:@"Foot - Saint-Etienne", @"Marseille - Paris", @"Bordeaux - Lens", @"Metz - Toulouse", nil];
    }
    else if (self.categories == 1)
    {
        match = [NSArray arrayWithObjects:@"Basket - Saint-Etienne", @"Marseille - Paris", @"Bordeaux - Lens", @"Metz - Toulouse", nil];
    }
    else if (self.categories == 2)
    {
        match = [NSArray arrayWithObjects:@"Hand - Saint-Etienne", @"Marseille - Paris", @"Bordeaux - Lens", @"Metz - Toulouse", nil];
    }
    else if (self.categories == 3)
    {
        match = [NSArray arrayWithObjects:@"Foot US - Saint-Etienne", @"Marseille - Paris", @"Bordeaux - Lens", @"Metz - Toulouse", nil];
    }
    else if (self.categories == 4)
    {
        match = [NSArray arrayWithObjects:@"Hockey - Saint-Etienne", @"Marseille - Paris", @"Bordeaux - Lens", @"Metz - Toulouse", nil];
    }
    else
    {
        match = [NSArray arrayWithObjects:@"Monaco - Saint-Etienne", @"Marseille - Paris", @"Bordeaux - Lens", @"Metz - Toulouse", nil];
    }*/
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)configureRestKit
{
    // initialize AFNetworking HTTPClient
    RKLogConfigureByName("*", RKLogLevelOff);
    NSURL *baseURL = [NSURL URLWithString:@"http://10.224.9.193:3000/api/"];
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    
    // initialize RestKit
    RKObjectManager *objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
    // setup object mappings
    RKObjectMapping *venueMapping = [RKObjectMapping mappingForClass:[testRest class]];
    [venueMapping addAttributeMappingsFromArray:@[@"ID"]];
    [venueMapping addAttributeMappingsFromArray:@[@"DATE"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM1"]];
    [venueMapping addAttributeMappingsFromArray:@[@"TEAM2"]];
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
}

- (void)loadRest
{
 /*   NSString *latLon = @"37.33,-122.03"; // approximate latLon of The Mothership (a.k.a Apple headquarters)
    NSString *clientID = kCLIENTID;
    NSString *clientSecret = kCLIENTSECRET;*/
    
    NSDictionary *queryParams = NULL;
    
    [[RKObjectManager sharedManager] getObjectsAtPath:@"/api/GAME?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.W3sibmFtZSI6IlRlc3QiLCJwYXNzd2QiOiJ0ZXN0In1d.cgRvLAcgkD03lBa8IgfJuXpb1WJhR7iUMIGEt9ctYVg"
                                           parameters:queryParams
                                              success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                                                  _rest = mappingResult.array;
                                                [self.tableView reloadData];
                                              }
                                              failure:^(RKObjectRequestOperation *operation, NSError *error) {
                                                  NSLog(@"What do you mean by 'there is no coffee?': %@", error);
                                              }];
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
   return _rest.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"match";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    testRest *res = _rest[indexPath.row];
   // cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    cell.textLabel.numberOfLines = 2;
    [cell.textLabel setFont:[UIFont systemFontOfSize:12]];
    [cell.textLabel setTextAlignment:UITextAlignmentCenter];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@ - %@ %@ \n %@",res.TEAM1,res.SCORE1, res.SCORE2, res.TEAM2, res.DATE];
    NSLog(@"%@",res.DATE);
    if (res.STATUS == 0)
        cell.imageView.image = [UIImage imageNamed:@"status_red"];
    else if (res.STATUS == 1)
        cell.imageView.image = [UIImage imageNamed:@"status_yellow"];
    else if (res.STATUS == 2)
        cell.imageView.image = [UIImage imageNamed:@"status_green"];
    return cell;
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
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"FieldImg"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        MatchViewController *myVC = [segue destinationViewController];
        myVC.categories = self.categories;
        myVC.idMatch = indexPath.row;
        myVC._matchInfo = _rest[indexPath.row];
    }
}


@end