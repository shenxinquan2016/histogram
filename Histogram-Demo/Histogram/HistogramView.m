//
//  HistogramView.m
//  HistogramView
//
//  Created by SXQ on 16/5/24.
//  Copyright © 2016年 沈昕权. All rights reserved.
//

#import "HistogramView.h"

#define maxNum 1500.0 //柱形图柱子的最大数值
#define maxHeight 100.0 //柱子的最大高度

@implementation HistogramView

- (void)setHistogramArray:(NSArray *)histogramArray {
  
    _histogramArray = histogramArray;

    UIView *viewUnderLine = [[UIView alloc] initWithFrame:CGRectMake(0, 230/2, _histogramArray.count * 30/2 + (_histogramArray.count - 1) * 70/2, 1)];
    viewUnderLine.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:viewUnderLine];
    _width = viewUnderLine.frame.origin.x + viewUnderLine.frame.size.width;
  
    for (int i = 0; i < _histogramArray.count; i++) {
        //小圆点
        UIView *viewDot = [[UIView alloc] initWithFrame:CGRectMake(3.5 + i * ((70/2) + (30/2)), viewUnderLine.frame.origin.y + viewUnderLine.frame.size.height + (12/2), (16/2), (16/2))];
        viewDot.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];
        viewDot.layer.cornerRadius = (4);
        [self addSubview:viewDot];
        //虚线
        if (i < _histogramArray.count - 1) {
            for (int j = 0; j < (((70/2) - (1.5)) / (6)); j++) {
              UIView *viewLine = [[UIView alloc] initWithFrame:CGRectMake(viewDot.frame.origin.x + viewDot.frame.size.width + (1.5) + j * ((3) + (4)), viewUnderLine.frame.origin.y + viewUnderLine.frame.size.height + (9), (3), 2)];
              viewLine.backgroundColor = [UIColor lightGrayColor];
              [self addSubview:viewLine];
            }
        }
        //元素名称
        UILabel *labName = [[UILabel alloc] initWithFrame:CGRectMake(i * ((30/2) + (70/2)), viewDot.frame.origin.y + viewDot.frame.size.height + (4), (30/2), 15)];
        labName.text = [_histogramArray[i] objectForKey:@"name"];
        labName.textColor = [UIColor lightGrayColor];
        labName.font = [UIFont systemFontOfSize:15];
        labName.textAlignment = NSTextAlignmentCenter;
        [self addSubview:labName];
      
        _height = labName.frame.origin.y + labName.frame.size.height;
      
        //柱形图
        UIView *viewRectangle = [[UIView alloc] initWithFrame:CGRectMake(i * ((30/2) + (70/2)), (viewUnderLine.frame.origin.y + viewUnderLine.frame.size.height - 1) - (([[_histogramArray[i] objectForKey:@"num"] integerValue] / maxNum) * maxHeight), (30/2), [[_histogramArray[i] objectForKey:@"num"] integerValue] / maxNum * maxHeight)];
        viewRectangle.backgroundColor = viewDot.backgroundColor;
        [self addSubview:viewRectangle];
      
        //元素含量
        UILabel *labNum = [[UILabel alloc] initWithFrame:CGRectMake(-10 + i * ((30/2) + (70/2)), viewRectangle.frame.origin.y - (20), (30/2) + 20, 15)];
        labNum.font = [UIFont systemFontOfSize:15];
        labNum.textColor = [UIColor lightGrayColor];
        labNum.text = [_histogramArray[i] objectForKey:@"num"];
        labNum.textAlignment = NSTextAlignmentCenter;
        [self addSubview:labNum];
      

    }
  
    //重新设置 frame
    self.frame = CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - _width / 2, self.frame.origin.y, _width, _height);

}

@end
