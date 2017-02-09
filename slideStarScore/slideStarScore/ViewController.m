//
//  ViewController.m
//  slideStarScore
//
//  Created by 周希财 on 2017/2/9.
//  Copyright © 2017年 iOS_ZXC. All rights reserved.
//

#import "ViewController.h"
#import "LookOverStarViewController.h"
#import "ScoreStarViewController.h"
@interface ViewController ()
@property (nonatomic, strong) UIButton *lookOver;
@property (nonatomic, strong) UIButton *score;
@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewDidDisappear:(BOOL)animated{

    [super viewDidDisappear:YES];
    self.navigationController.navigationBarHidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"1" ofType:@"jpeg"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    self.view.layer.contents = (id)image.CGImage;
    
    [self.view addSubview:self.lookOver];
    [self.view addSubview:self.score];
    // Do any additional setup after loading the view, typically from a nib.
}
- (UIButton *)lookOver{

    if (!_lookOver) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(150, 150, 100, 30);
        [button addTarget:self action:@selector(lookOverStar) forControlEvents:UIControlEventTouchUpInside];
        [button setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        [button setTitle:@"lookOver" forState:UIControlStateNormal];
        _lookOver = button;
    }
    return _lookOver;
}
- (UIButton *)score{
    
    if (!_score) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(150, 250, 100, 30);
        [button addTarget:self action:@selector(scoreStar) forControlEvents:UIControlEventTouchUpInside];
        [button setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];

        [button setTitle:@"score" forState:UIControlStateNormal];
        _score = button;
    }
    return _score;
}
- (void)lookOverStar{
    [self.navigationController pushViewController:[[LookOverStarViewController alloc] init] animated:YES];

}
- (void)scoreStar{
    [self.navigationController pushViewController:[[ScoreStarViewController alloc] init] animated:YES];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
