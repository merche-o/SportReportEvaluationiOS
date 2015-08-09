//
//  GameListController.h
//  SlideOutMenu
//
//  Created by Jordan Faure on 20/06/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MatchViewController.h"

@interface GameListController : UITableViewController
@property (nonatomic) int categories;
@property (nonatomic, strong) NSArray *rest;


@end
