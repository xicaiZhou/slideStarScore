
//
//  ScoreStarViewController.m
//  slideStarScore
//
//  Created by 周希财 on 2017/2/9.
//  Copyright © 2017年 iOS_ZXC. All rights reserved.
//

#import "ScoreStarViewController.h"
#import "StarView.h"
@interface ScoreStarViewController ()
@property (nonatomic, strong) StarView *starView;
@property (nonatomic, strong) UILabel *score;

@end

@implementation ScoreStarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ScoreStar";
    NSString *path = [[NSBundle mainBundle]pathForResource:@"3" ofType:@"jpeg"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    self.view.layer.contents = (id)image.CGImage;
    [self.view addSubview:self.starView];
    [self.view addSubview:self.score];
    // Do any additional setup after loading the view.
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
