//
//  SelectPlayerStatController.h
//  
//
//  Created by Jordan Faure on 06/01/2016.
//
//

#import <UIKit/UIKit.h>
#import "testRest.h"

@interface SelectPlayerStatController : UITableViewController

@property(nonatomic) int categories;
@property(nonatomic) int idMatch;
@property(nonatomic, strong) testRest *_matchInfo;

@end
