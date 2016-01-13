//
//  PlayerStatViewController.m
//  
//
//  Created by Jordan Faure on 12/01/2016.
//
//

#import "PlayerStatViewController.h"
#import "PNChart.h"

@interface PlayerStatViewController ()

@end

@implementation PlayerStatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.title = __matchInfo.NAME;
    
    UILabel *label, *age, *team, *position;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(50,0,200,200)];
    label.text = [NSString stringWithFormat:@"Taille : %@",__matchInfo.SIZE];
    
    age = [[UILabel alloc] initWithFrame:CGRectMake(250,0,200,200)];
    age.text = [NSString stringWithFormat:@"Age : %@",__matchInfo.AGE];
    
    team = [[UILabel alloc] initWithFrame:CGRectMake(10,50,200,200)];
    team.text = [NSString stringWithFormat:@"Equipe : %@",__matchInfo.TEAM_NAME];
    
    position = [[UILabel alloc] initWithFrame:CGRectMake(220,50,150,200)];
    position.text = [NSString stringWithFormat:@"Poste: %@",__matchInfo.POSITION];
    
    [self.view addSubview:label];
    [self.view addSubview:age];
    [self.view addSubview:team];
    [self.view addSubview:position];
    
    //For BarC hart
    static NSNumberFormatter *barChartFormatter;
    if (!barChartFormatter){
        barChartFormatter = [[NSNumberFormatter alloc] init];
        barChartFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
        barChartFormatter.allowsFloats = NO;
        barChartFormatter.maximumFractionDigits = 0;
    }
    PNBarChart *barChart;
    barChart = [[PNBarChart alloc] initWithFrame:CGRectMake(0, 200, SCREEN_WIDTH, 200.0)];
    //        barChart.showLabel = NO;
    barChart.backgroundColor = [UIColor clearColor];
    barChart.yLabelFormatter = ^(CGFloat yValue){
        return [barChartFormatter stringFromNumber:[NSNumber numberWithFloat:yValue]];
    };
    
    
    barChart.labelMarginTop = 5.0;
    [barChart setXLabels:@[@"distance 1",@"distance 2",@"distance 3",@"distance 4",@"distance 5",@"distance 6"]];
    //[barChart setXLabels:@[@"Distance parcourue"]];
    //[barChart setYLabels:@[@-10,@0,@10]];
    //[barChart setYValues:@[@10000.0,@30000.0,@10000.0,@100000.0,@500000.0,@1000000.0,@1150000.0,@2150000.0]];
    [barChart setYValues:@[@4,  @8, @6, @12, @18, @9]];
    [barChart setStrokeColors:@[PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow]];
    
    
    [barChart strokeChart];
    
    barChart.delegate = self;
    
    [self.view addSubview:barChart];
    
    //For Line Chart
    PNLineChart * lineChart = [[PNLineChart alloc] initWithFrame:CGRectMake(0, 450.0, SCREEN_WIDTH, 200.0)];
    [lineChart setXLabels:@[@"VM 1",@"VM 2",@"VM 3",@"VM 4",@"VM 5",@"VM 6"]];
    
    // Line Chart No.1
    NSArray * data01Array = @[@15.0, @17.0, @12.0, @13.0, @18.0, @13.0];
    PNLineChartData *data01 = [PNLineChartData new];
    data01.color = PNFreshGreen;
    data01.itemCount = lineChart.xLabels.count;
    data01.getData = ^(NSUInteger index) {
        CGFloat yValue = [data01Array[index] floatValue];
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    
    lineChart.chartData = @[data01];
    [lineChart strokeChart];
    [self.view addSubview:lineChart];
    
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
