//
//  MatchViewController.m
//  SlideOutMenu
//
//  Created by Jordan Faure on 20/06/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import "MatchViewController.h"

@interface MatchViewController ()

@end

@implementation MatchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageview;
    UILabel *label;
    switch (self.categories) {
        case 0:
            NSLog(@"%@",__matchInfo.TEAM1);
            label = [[UILabel alloc] initWithFrame:CGRectMake(90,0,200,200)];
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"soccer_field"];
            label.text = [NSString stringWithFormat:@"%@ %@ - %@ %@",__matchInfo.TEAM1, __matchInfo.SCORE1, __matchInfo.SCORE2, __matchInfo.TEAM2];
            [self.view addSubview:label];
            [self.view addSubview:imageview];
            break;
        case 1:
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"basketball_field"];
            [self.view addSubview:imageview];
            break;
        case 2:
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"handball_field"];
            [self.view addSubview:imageview];
            break;
        case 3:
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"football_field"];
            [self.view addSubview:imageview];
            break;
        case 4:
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"hockey_field"];
            [self.view addSubview:imageview];
            break;
        default:
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"soccer_field"];
            [self.view addSubview:imageview];
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

