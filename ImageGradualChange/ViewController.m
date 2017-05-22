//
//  ViewController.m
//  ImageGradualChange
//
//  Created by Eva on 2017/5/12.
//  Copyright © 2017年 shanghaiWOW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSTimer   *timer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    // 背景图片
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 400)];
    imageView.image = [UIImage imageNamed:@"房间.jpg"];
    [self.view addSubview:imageView];
    
    // 渐变图层
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = imageView.bounds;
    
    // 设置颜色
    gradientLayer.colors = @[
                             (id)[[UIColor clearColor] colorWithAlphaComponent:0.0f].CGColor
                             ,
                             (id)[[UIColor whiteColor] colorWithAlphaComponent:1.0f].CGColor
                             ];
    gradientLayer.locations = @[
                                [NSNumber numberWithFloat:0.3f]
                                ,
                                [NSNumber numberWithFloat:0.7f]
                                ];
    
    // 添加渐变图层
    [imageView.layer addSublayer:gradientLayer];
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
