//
//  SelectTeamStatController.h
//  
//
//  Created by Jordan Faure on 06/01/2016.
//
//

#import <UIKit/UIKit.h>
#import "SelectPlayerStatController.h"

@interface SelectTeamStatController : UITableViewController
@property (nonatomic) int categories;
@property (nonatomic, strong) NSArray *rest;

@end
