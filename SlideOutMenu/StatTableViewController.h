//
//  StatTableViewController.h
//  
//
//  Created by Jordan Faure on 05/01/2016.
//
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import "SelectTeamStatController.h"

@interface StatTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

@end
