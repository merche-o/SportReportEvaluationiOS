//
//  TeamStatViewController.h
//  SlideOutMenu
//
//  Created by Ainur on 05/01/2016.
//  Copyright © 2016 Archetapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PNChartDelegate.h"
#import "testRest.h"
#import "PNChart.h"


@interface TeamStatViewController : UIViewController<PNChartDelegate>
@property(nonatomic) int categories;
@property(nonatomic) int idMatch;
@property(nonatomic, strong) testRest *_matchInfo;
@end
