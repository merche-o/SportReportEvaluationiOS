//
//  SignUpTableViewController.h
//  
//
//  Created by Jordan Faure on 12/11/2015.
//
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import <RestKit/RestKit.h>
#import "testRest.h"
#import "UserData.h"
#import "SWRevealViewController.h"

@interface SignUpTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

@end
