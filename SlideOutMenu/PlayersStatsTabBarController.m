//
//  PlayersStatsTabBarController.m
//  SlideOutMenu
//
//  Created by Ainur on 09/01/2016.
//  Copyright © 2016 Archetapp. All rights reserved.
//

#import "PlayersStatsTabBarController.h"

@implementation PlayersStatsTabBarController
-(void)viewDidLoad{
    [super viewDidLoad];
    
}
-(void) viewWillLayoutSubviews {
    CGRect tabFrame = self.tabBar.frame;
    self.tabBar.items[0].title = self._matchInfo.TEAM1;
    self.tabBar.items[1].title = self._matchInfo.TEAM2;
    tabFrame.size.height = 70;
    tabFrame.origin.y = 50;
    self.tabBar.frame = tabFrame;
}
@end
