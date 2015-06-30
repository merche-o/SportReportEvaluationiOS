//
//  ParameterViewController.h
//  SlideOutMenu
//
//  Created by Jordan Faure on 22/06/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface ParameterViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

@end
