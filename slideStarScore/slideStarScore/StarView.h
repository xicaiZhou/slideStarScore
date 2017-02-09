//
//  StarView.h
//  slideStarScore
//
//  Created by 周希财 on 2017/2/9.
//  Copyright © 2017年 iOS_ZXC. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^returnBlock) (CGFloat score);
@interface StarView : UIControl

// 当前评分制
@property (nonatomic, assign) float currentValue;
@property (nonatomic, copy) returnBlock returnB;
@end
