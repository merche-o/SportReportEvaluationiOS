//
//  SelectPlayerStatController.h
//  
//
//  Created by Jordan Faure on 06/01/2016.
//
//

#import <UIKit/UIKit.h>
#import "testRest.h"
#import "teamData.h"
#import <RestKit/RestKit.h>


@interface SelectPlayerStatController : UITableViewController

@property(nonatomic) int categories;
@property(nonatomic) int idMatch;
@property(nonatomic, strong) teamData *_matchInfo;

@property (nonatomic, strong) NSArray *rest;


@end
