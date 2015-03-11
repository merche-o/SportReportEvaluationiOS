//
//  SportTableController.h
//  Sport Report Evaluation
//
//  Created by Ainur on 26/02/2015.
//  Copyright (c) 2015 test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameListController.h"

@interface SportTableController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) GameListController *gamelistControler;
@end
