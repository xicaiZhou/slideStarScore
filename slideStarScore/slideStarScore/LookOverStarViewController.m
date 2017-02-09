//
//  LookOverStarViewController.m
//  slideStarScore
//
//  Created by 周希财 on 2017/2/9.
//  Copyright © 2017年 iOS_ZXC. All rights reserved.
//

#import "LookOverStarViewController.h"
#import "StarView.h"
@interface LookOverStarViewController ()
@property (nonatomic, strong) StarView *starView;
@property (nonatomic, strong) UILabel *score;
@end

@implementation LookOverStarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"LookOverStar";
    NSString *path = [[NSBundle mainBundle]pathForResource:@"2" ofType:@"jpeg"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    self.view.layer.contents = (id)image.CGImage;
    [self.view addSubview:self.starView];
    self.starView.currentValue = 2.3;   //赋初始值
    self.starView.userInteractionEnabled = NO; //关闭用户交互 （只允许看不允许操作）
    [self.view addSubview:self.score];
}
- (UILabel *)score{

    if (!_score) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(220, 200, 100, 30)];
        _score = label;
    }
    return _score;
}
- (StarView *)starView{

    if (!_starView) {
        StarView *star = [[StarView alloc] initWithFrame:CGRectMake(50, 200, 150, 30)];
        star.returnB = ^(CGFloat score){
            _score.text = [NSString stringWithFormat:@"评分: %.1f",score];

        };
        _starView = star;
        
    }
    return _starView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
