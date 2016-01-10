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
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.title = @"Match";
    UIButton *myBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn9 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn10 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn11 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn12 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn13 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn14 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn15 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn16 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn17 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn18 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn19 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn20 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *myBtn21 = [UIButton buttonWithType:UIButtonTypeRoundedRect];

    
    UIImage *btnImage = [UIImage imageNamed:@"red_status"];
    UIImage *btnImage1 = [UIImage imageNamed:@"yellow_status"];
    UIImage *btnImage2 = [UIImage imageNamed:@"green_status"];
    
    switch (self.categories) {
        case 0:
            NSLog(@"%@",__matchInfo.TEAM1);
            label = [[UILabel alloc] initWithFrame:CGRectMake(90,0,200,200)];
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"soccer_field"];
            label.text = [NSString stringWithFormat:@"%@ %@ - %@ %@",__matchInfo.TEAM1, __matchInfo.SCORE1, __matchInfo.SCORE2, __matchInfo.TEAM2];
            
            // ROUGE
            myBtn.frame = CGRectMake(153,153,17,17); // goal
            myBtn1.frame = CGRectMake(25,225,17,17); // defenseur gauche
            myBtn2.frame = CGRectMake(115,215,17,17); // defenseur centre gauche
            myBtn3.frame = CGRectMake(190,215,17,17); // defenseur centre droit
            myBtn4.frame = CGRectMake(280,225,17,17); // defenseur droit
            myBtn5.frame = CGRectMake(25,280,17,17); // milieu gauche
            myBtn6.frame = CGRectMake(115,270,17,17); // milieu centre gauche
            myBtn7.frame = CGRectMake(190,270,17,17); // milieu centre droit
            myBtn8.frame = CGRectMake(280,280,17,17); // milieu droit
            myBtn9.frame = CGRectMake(100,325,17,17); // attaquant gauche
            myBtn10.frame = CGRectMake(203,325,17,17); // attaquant droit

            // JAUNE
            myBtn11.frame = CGRectMake(153,545,17,17); // goal
            myBtn12.frame = CGRectMake(25,473,17,17); // defenseur gauche
            myBtn13.frame = CGRectMake(115,483,17,17); // defenseur centre gauche
            myBtn14.frame = CGRectMake(190,483,17,17); // defenseur centre droit
            myBtn15.frame = CGRectMake(280,473,17,17); // defenseur droit
            myBtn16.frame = CGRectMake(25,418,17,17); // milieu gauche
            myBtn17.frame = CGRectMake(115,428,17,17); // milieu centre gauche
            myBtn18.frame = CGRectMake(190,428,17,17); // milieu centre droit
            myBtn19.frame = CGRectMake(280,418,17,17); // milieu droit
            myBtn20.frame = CGRectMake(100,373,17,17); // attaquant gauche
            myBtn21.frame = CGRectMake(203,373,17,17); // attaquant droit

            [myBtn setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn1 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn2 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn3 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn4 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn5 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn6 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn7 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn8 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn9 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn10 setBackgroundImage:btnImage forState:UIControlStateNormal];
            [myBtn11 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn12 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn13 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn14 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn15 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn16 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn17 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn18 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn19 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn20 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn21 setBackgroundImage:btnImage1 forState:UIControlStateNormal];

            [self.view addSubview:label];
            [self.view addSubview:imageview];
            [self.view addSubview:myBtn];
            [self.view addSubview:myBtn1];
            [self.view addSubview:myBtn2];
            [self.view addSubview:myBtn3];
            [self.view addSubview:myBtn4];
            [self.view addSubview:myBtn5];
            [self.view addSubview:myBtn6];
            [self.view addSubview:myBtn7];
            [self.view addSubview:myBtn8];
            [self.view addSubview:myBtn9];
            [self.view addSubview:myBtn10];
            [self.view addSubview:myBtn11];
            [self.view addSubview:myBtn12];
            [self.view addSubview:myBtn13];
            [self.view addSubview:myBtn14];
            [self.view addSubview:myBtn15];
            [self.view addSubview:myBtn16];
            [self.view addSubview:myBtn17];
            [self.view addSubview:myBtn18];
            [self.view addSubview:myBtn19];
            [self.view addSubview:myBtn20];
            [self.view addSubview:myBtn21];


            break;
        case 1:
            label = [[UILabel alloc] initWithFrame:CGRectMake(90,0,200,200)];
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"basketball_field"];
            label.text = [NSString stringWithFormat:@"%@ %@ - %@ %@",__matchInfo.TEAM1, __matchInfo.SCORE1, __matchInfo.SCORE2, __matchInfo.TEAM2];
            // VERT
            myBtn.frame = CGRectMake(153,335,17,17); //  meneur
            myBtn1.frame = CGRectMake(100,300,17,17); //  arrière
            myBtn2.frame = CGRectMake(80,265,17,17); // aillier
            myBtn3.frame = CGRectMake(206,300,17,17); // aillier fort
            myBtn4.frame = CGRectMake(226,265,17,17); // pivot
            // JAUNE
            myBtn11.frame = CGRectMake(153,363,17,17); // meneur
            myBtn12.frame = CGRectMake(100,398,17,17); //  arrière
            myBtn13.frame = CGRectMake(80,428,17,17); // aillier
            myBtn14.frame = CGRectMake(206,398,17,17); // aillier fort
            myBtn15.frame = CGRectMake(226,428,17,17); // pivot
            
            [myBtn setBackgroundImage:btnImage2 forState:UIControlStateNormal];
            [myBtn1 setBackgroundImage:btnImage2 forState:UIControlStateNormal];
            [myBtn2 setBackgroundImage:btnImage2 forState:UIControlStateNormal];
            [myBtn3 setBackgroundImage:btnImage2 forState:UIControlStateNormal];
            [myBtn4 setBackgroundImage:btnImage2 forState:UIControlStateNormal];
            
            [myBtn11 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn12 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn13 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn14 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            [myBtn15 setBackgroundImage:btnImage1 forState:UIControlStateNormal];
            
            [self.view addSubview:label];
            [self.view addSubview:imageview];
            [self.view addSubview:myBtn];
            [self.view addSubview:myBtn1];
            [self.view addSubview:myBtn2];
            [self.view addSubview:myBtn3];
            [self.view addSubview:myBtn4];
            [self.view addSubview:myBtn11];
            [self.view addSubview:myBtn12];
            [self.view addSubview:myBtn13];
            [self.view addSubview:myBtn14];
            [self.view addSubview:myBtn15];
            break;
        case 2:
            label = [[UILabel alloc] initWithFrame:CGRectMake(90,0,200,200)];
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"handball_field"];
            label.text = [NSString stringWithFormat:@"%@ %@ - %@ %@",__matchInfo.TEAM1, __matchInfo.SCORE1, __matchInfo.SCORE2, __matchInfo.TEAM2];
            [self.view addSubview:label];
            [self.view addSubview:imageview];
            break;
        case 3:
            label = [[UILabel alloc] initWithFrame:CGRectMake(90,0,200,200)];
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"football_field"];
            label.text = [NSString stringWithFormat:@"%@ %@ - %@ %@",__matchInfo.TEAM1, __matchInfo.SCORE1, __matchInfo.SCORE2, __matchInfo.TEAM2];
            [self.view addSubview:label];
            [self.view addSubview:imageview];
            break;
        case 4:
            label = [[UILabel alloc] initWithFrame:CGRectMake(90,0,200,200)];
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"hockey_field"];
            label.text = [NSString stringWithFormat:@"%@ %@ - %@ %@",__matchInfo.TEAM1, __matchInfo.SCORE1, __matchInfo.SCORE2, __matchInfo.TEAM2];
            [self.view addSubview:label];
            [self.view addSubview:imageview];
            break;
        default:
            label = [[UILabel alloc] initWithFrame:CGRectMake(90,0,200,200)];
            imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 147, 320, 420)];
            imageview.image = [UIImage imageNamed:@"soccer_field"];
            label.text = [NSString stringWithFormat:@"%@ %@ - %@ %@",__matchInfo.TEAM1, __matchInfo.SCORE1, __matchInfo.SCORE2, __matchInfo.TEAM2];
            [self.view addSubview:label];
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
  
        UITabBarController *tabBar = [segue destinationViewController];
    ((TeamStatViewController *)tabBar.viewControllers[0])._matchInfo = self._matchInfo;
    ((TeamStatViewController *)tabBar.viewControllers[1])._matchInfo = self._matchInfo;

    
}



@end

