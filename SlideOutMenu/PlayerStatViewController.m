//
//  PlayerStatViewController.m
//  
//
//  Created by Jordan Faure on 12/01/2016.
//
//

#import "PlayerStatViewController.h"

@interface PlayerStatViewController ()

@end

@implementation PlayerStatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(90,0,200,200)];
    label.text = [NSString stringWithFormat:@"%@ - %@ - %@",__matchInfo.SIZE, __matchInfo.NAME, __matchInfo.PASSES];
    
    [self.view addSubview:label];
    
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
