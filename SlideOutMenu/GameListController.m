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
#import "teamData.h"
#import "UserData.h"

@interface GameListController ()

@end

@implementation GameListController {
    NSArray *match;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.

    [self.navigationController.navigationBar setBarTintColor:[UIColor viewFlipsideBackgroundColor]];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.navigationItem.prompt = @"Matchs";
    
    switch (self.categories) {
        case 0:
            [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:38.0/255.0 green:156.0/255.0 blue:122.0/255.0 alpha:1.0]];
            self.title = @"Soccer";
            break;
        case 1:
            [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
            self.title = @"Basketball";
            break;
        case 2:
            [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:30.0/255.0 green:92.0/255.0 blue:144.0/255.0 alpha:1.0]];
            self.title = @"Handball";
            break;
        case 3:
            [self.navigationController.navigationBar setBarTintColor:[UIColor greenColor]];
            self.title = @"Foot US";
            break;
        case 4:
            [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
            self.title = @"Hockey";
            break;
        default:
            [self.navigationController.navigationBar setBarTintColor:[UIColor viewFlipsideBackgroundColor]];
            self.title = @"Soccer";
            break;
    }
    UIBarButtonItem *btnBack = [[UIBarButtonItem alloc]
                                initWithTitle:@"Home"
                                style:UIBarButtonItemStyleBordered
                                target:self
                                action:@selector(backButtonClicked:)];
    [self.navigationItem setLeftBarButtonItem: btnBack];
    

    
    [self loadRest];
}

-(void)backButtonClicked:(UIBarButtonItem*)sender
{
    [self.navigationController popViewControllerAnimated: TRUE];
    [self.navigationController.navigationBar setBarTintColor:[UIColor viewFlipsideBackgroundColor]];
}


- (void)loadRest
{
 /*   NSString *latLon = @"37.33,-122.03"; // approximate latLon of The Mothership (a.k.a Apple headquarters)
    NSString *clientID = kCLIENTID;
    NSString *clientSecret = kCLIENTSECRET;*/
    
    NSDictionary *queryParams = NULL;
    NSString *request = [NSString stringWithFormat:@"%@%@", @"/api/GAME?token=",  G_Token];

    [[RKObjectManager sharedManager] getObjectsAtPath:request
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
        cell.imageView.image = [UIImage imageNamed:@"red_status"];
    else if (res.STATUS == 1)
        cell.imageView.image = [UIImage imageNamed:@"yellow_status"];
    else if (res.STATUS == 2)
        cell.imageView.image = [UIImage imageNamed:@"green_status"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
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