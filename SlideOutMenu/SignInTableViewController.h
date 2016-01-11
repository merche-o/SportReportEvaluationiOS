//
//  SignInTableViewController.h
//  
//
//  Created by Jordan Faure on 12/11/2015.
//
//

#import <UIKit/UIKit.h>
#import <RestKit/RestKit.h>
#import "testRest.h"
#import "UserData.h"
#import "SWRevealViewController.h"

@interface SignInTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

@end
