//
//  TeamStatViewController.m
//  SlideOutMenu
//
//  Created by Ainur on 05/01/2016.
//  Copyright © 2016 Archetapp. All rights reserved.
//

#import "TeamStatViewController.h"
#import "PNChart.h"

@implementation TeamStatViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *items = @[
                       [PNPieChartDataItem dataItemWithValue:40 color:PNRed description:self._matchInfo.TEAM1],
                       [PNPieChartDataItem dataItemWithValue:60 color:PNYellow description:self._matchInfo.TEAM2],
                       ];
    
    
    
    PNPieChart *pieChart = [[PNPieChart alloc] initWithFrame:CGRectMake(125.0, 100.0, 120.0, 120.0) items:items];
    pieChart.descriptionTextColor = [UIColor whiteColor];
    pieChart.descriptionTextFont  = [UIFont fontWithName:@"Avenir-Medium" size:14.0];
    [pieChart strokeChart];
    
    [self.view addSubview:pieChart];
    
    //For Line Chart
    PNLineChart * lineChart = [[PNLineChart alloc] initWithFrame:CGRectMake(0, 250.0, SCREEN_WIDTH, 200.0)];
    [lineChart setXLabels:@[@"0",@"15",@"30",@"45",@"60", @"75", @"90"]];
    
    // Line Chart No.1
    NSArray * data01Array = @[@0.0, @1.0, @1.0, @2.0, @2.0, @2.0, @2.0];
    PNLineChartData *data01 = [PNLineChartData new];
    data01.color = PNFreshGreen;
    data01.itemCount = lineChart.xLabels.count;
    data01.getData = ^(NSUInteger index) {
        CGFloat yValue = [data01Array[index] floatValue];
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    // Line Chart No.2
    NSArray * data02Array = @[@0.0, @0.0, @1.0, @1.0, @1.0, @1.0, @2.0];
    PNLineChartData *data02 = [PNLineChartData new];
    data02.color = PNTwitterColor;
    data02.itemCount = lineChart.xLabels.count;
    data02.getData = ^(NSUInteger index) {
        CGFloat yValue = [data02Array[index] floatValue];
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    
    lineChart.chartData = @[data01, data02];
    
    [lineChart strokeChart];
    [self.view addSubview:lineChart];
    
    static NSNumberFormatter *barChartFormatter;
    if (!barChartFormatter){
        barChartFormatter = [[NSNumberFormatter alloc] init];
        barChartFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
        barChartFormatter.allowsFloats = NO;
        barChartFormatter.maximumFractionDigits = 0;
    }
    PNBarChart *barChart;
    barChart = [[PNBarChart alloc] initWithFrame:CGRectMake(0, 500, SCREEN_WIDTH, 100.0)];
    //        barChart.showLabel = NO;
    barChart.backgroundColor = [UIColor clearColor];
    barChart.yLabelFormatter = ^(CGFloat yValue){
        return [barChartFormatter stringFromNumber:[NSNumber numberWithFloat:yValue]];
    };
    
  
    
    
    barChart.labelMarginTop = 5.0;
    [barChart setXLabels:@[@"Pss", @"Ctr.",@"Tirs",@"Tête",@"Tcl.",@"Cor.",@"CF",@"But",@"But"]];
    //[barChart setYLabels:@[@-10,@0,@10]];
    //[barChart setYValues:@[@10000.0,@30000.0,@10000.0,@100000.0,@500000.0,@1000000.0,@1150000.0,@2150000.0]];
    [barChart setYValues:@[@50,@80,@2,@10,@1,@11,@10,self._matchInfo.SCORE1,self._matchInfo.SCORE2]];
    [barChart setStrokeColors:@[PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow,PNRed]];
    
    
    [barChart strokeChart];
    
    barChart.delegate = self;
    
    [self.view addSubview:barChart];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}




@end
