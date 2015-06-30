//
//  GameListController.m
//  SlideOutMenu
//
//  Created by Jordan Faure on 20/06/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import "GameListController.h"

@interface GameListController ()

@end

@implementation GameListController {
    NSArray *match;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    NSLog(@"%d",self.categories);
    if (self.categories == 0)
    {
        match = [NSArray arrayWithObjects:@"Foot - Saint-Etienne", @"Marseille - Paris", @"Bordeaux - Lens", @"Metz - Toulouse", nil];
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
    }
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return [match count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    static NSString *simpleTableIdentifier = @"match";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [match objectAtIndex:indexPath.row];
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
    }
}


@end