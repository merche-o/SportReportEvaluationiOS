//
//  SportTableViewController.h
//  SlideOutMenu
//
//  Created by Jordan Faure on 20/06/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameListController.h"

@interface SportTableController : UITableViewController <UITableViewDelegate, UITableViewDataSource>


@property(nonatomic) int cellChoose;
@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

@end
