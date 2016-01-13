//
//  PlayerStatViewController.h
//  
//
//  Created by Jordan Faure on 12/01/2016.
//
//

#import <UIKit/UIKit.h>
#import "PNChartDelegate.h"
#import "playerData.h"
#import "PNChart.h"

@interface PlayerStatViewController : UIViewController<PNChartDelegate>

@property(nonatomic, strong) playerData *_matchInfo;

@end
