//
//  ViewController.m
//  Histogram-Demo
//
//  Created by 沈昕权 on 16/7/3.
//  Copyright © 2016年 沈昕权. All rights reserved.
//

#import "ViewController.h"
#import "HistogramView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSArray *arrTemp = @[
                       
                       @{
                         @"name" : @"钾",
                         @"num" : @"1020"
                         },
                       @{
                         @"name" : @"铁",
                         @"num" : @"1500"
                         },
                       @{
                         @"name" : @"锌",
                         @"num" : @"974"
                         },
                       @{
                         @"name" : @"铜",
                         @"num" : @"765"
                         },
                       @{
                         @"name" : @"钠",
                         @"num" : @"1111"
                         },
                       @{
                         @"name" : @"钙",
                         @"num" : @"1344"
                         }
                       
                       ];
  
  HistogramView *viewMicroelement = [[HistogramView alloc] init];
  viewMicroelement.frame = CGRectMake(0 , 50, 0, 0);
  [viewMicroelement setHistogramArray:arrTemp];
  [self.view addSubview:viewMicroelement];
  
  NSArray *arrVitamin = @[
                       
                       @{
                         @"name" : @"A",
                         @"num" : @"1020"
                         },
                       @{
                         @"name" : @"B",
                         @"num" : @"1500"
                         },
                       @{
                         @"name" : @"C",
                         @"num" : @"974"
                         },
                       @{
                         @"name" : @"D",
                         @"num" : @"765"
                         },
                       @{
                         @"name" : @"E",
                         @"num" : @"1111"
                         },
                       ];
  
  HistogramView *viewVitamin = [[HistogramView alloc] init];
  viewVitamin.frame = CGRectMake(0 , 220, 0, 0);
  [viewVitamin setHistogramArray:arrVitamin];
  [self.view addSubview:viewVitamin];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
