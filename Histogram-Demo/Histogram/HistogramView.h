//
//  HistogramView.h
//  Histogram
//
//  Created by SXQ on 16/5/24.
//  Copyright © 2016年 沈昕权. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistogramView : UIView

/** 柱形图的宽度 */
@property (assign, nonatomic) float width;
/** 柱形图的高度 */
@property (assign, nonatomic) float height;

/** 传入的数组 */
@property (strong, nonatomic) NSArray *histogramArray;

/**
 *  复写数组方法
 *
 *  @param arrMicroelement <#array description#>
 */
- (void)setHistogramArray:(NSArray *)histogramArray;

@end
