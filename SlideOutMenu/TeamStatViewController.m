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
    
    
    
    PNPieChart *pieChart = [[PNPieChart alloc] initWithFrame:CGRectMake(40.0, 125.0, 120.0, 120.0) items:items];
    pieChart.descriptionTextColor = [UIColor whiteColor];
    pieChart.descriptionTextFont  = [UIFont fontWithName:@"Avenir-Medium" size:14.0];
    [pieChart strokeChart];
    
    [self.view addSubview:pieChart];
    
    static NSNumberFormatter *barChartFormatter;
    if (!barChartFormatter){
        barChartFormatter = [[NSNumberFormatter alloc] init];
        barChartFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
        barChartFormatter.allowsFloats = NO;
        barChartFormatter.maximumFractionDigits = 0;
    }
    PNBarChart *barChart;
    barChart = [[PNBarChart alloc] initWithFrame:CGRectMake(0, 325, SCREEN_WIDTH, 100.0)];
    //        barChart.showLabel = NO;
    barChart.backgroundColor = [UIColor clearColor];
    barChart.yLabelFormatter = ^(CGFloat yValue){
        return [barChartFormatter stringFromNumber:[NSNumber numberWithFloat:yValue]];
    };
    
  
    
    
    barChart.labelMarginTop = 5.0;
    [barChart setXLabels:@[@"Pss", @"Pss",@"Ctr.",@"Ctr.",@"Tirs",@"Tirs",@"Tête",@"Tête",@"Tcl.",@"Tcl.",@"Cor.",@"Cor.",@"CF",@"CF",@"B",@"B"]];
    //[barChart setYLabels:@[@-10,@0,@10]];
    [barChart setYValues:@[@10000.0,@30000.0,@10000.0,@100000.0,@500000.0,@1000000.0,@1150000.0,@2150000.0]];
    [barChart setYValues:@[@50,@80,@2,@10,@1,@11,@10,@20,@20,@13,@1,@3,@1,@4,self._matchInfo.SCORE1,self._matchInfo.SCORE2]];
    [barChart setStrokeColors:@[PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow,PNRed,PNYellow]];
    
    
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
