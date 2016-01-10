//
//  MatchViewController.h
//  SlideOutMenu
//
//  Created by Jordan Faure on 20/06/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "testRest.h"
#import "TeamStatViewController.h"

@interface MatchViewController : UIViewController

@property(nonatomic) int categories;
@property(nonatomic) int idMatch;
@property(nonatomic, strong) testRest *_matchInfo;



@end
