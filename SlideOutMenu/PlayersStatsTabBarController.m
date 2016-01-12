//
//  PlayersStatsTabBarController.m
//  SlideOutMenu
//
//  Created by Ainur on 09/01/2016.
//  Copyright © 2016 Archetapp. All rights reserved.
//

#import "PlayersStatsTabBarController.h"
#import "SelectPlayerStatController.h"

@implementation PlayersStatsTabBarController
-(void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"test2%@",self._matchInfo.TEAM_NAME1);
    ((SelectPlayerStatController *)self.viewControllers[0])._matchInfo = [[teamData alloc] init];
    ((SelectPlayerStatController *)self.viewControllers[0])._matchInfo.TEAM_NAME = self._matchInfo.TEAM_NAME1;
    ((SelectPlayerStatController *)self.viewControllers[1])._matchInfo.TEAM_NAME = self._matchInfo.TEAM_NAME2;
    
}
-(void) viewWillLayoutSubviews {

    CGRect tabFrame = self.tabBar.frame;
    //self.tabBar.items[0].title = self._matchInfo.TEAM_NAME1;
    ((SelectPlayerStatController *)self.viewControllers[0])._matchInfo = [[teamData alloc] init];

    ((SelectPlayerStatController *)self.viewControllers[0])._matchInfo.TEAM_NAME = self._matchInfo.TEAM_NAME1;
    ((SelectPlayerStatController *)self.viewControllers[1])._matchInfo.TEAM_NAME = self._matchInfo.TEAM_NAME2;
   
    //self.tabBar.items[1].title = self._matchInfo.TEAM_NAME2;
    
    tabFrame.size.height = 70;
    tabFrame.origin.y = 50;
    self.tabBar.frame = tabFrame;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
   
    
    
}

@end
