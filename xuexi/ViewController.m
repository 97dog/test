//
//  ViewController.m
//  xuexi
//
//  Created by mac on 2017/3/4.
//  Copyright © 2017年 one97dog. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@property (nonatomic, strong) UIView *testView;
@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.testView];
    [self.view addSubview:self.button];
}

- (void)buttonClick:(id)sender
{
    if (self.testView.superview)
    {
        [self.button setTitle:@"添加view按钮" forState:UIControlStateNormal];
        [self.testView removeFromSuperview];
    }
    else
    {
        [self.button setTitle:@"清除view按钮" forState:UIControlStateNormal];
        [self.view addSubview:self.testView];
    }
}

- (UIView *)testView
{
    if (!_testView)
    {
        CGRect viewRect = [UIScreen mainScreen].bounds;
        viewRect.size.height = 100.0;
        _testView = [[UIView alloc] initWithFrame:viewRect];
        _testView.backgroundColor = [UIColor redColor];
    }
    
    return _testView;
}

- (UIButton *)button
{
    if (!_button)
    {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame = CGRectMake(50, 200, 200.0, 30.0);
        [_button setTitle:@"清除view按钮" forState:UIControlStateNormal];
        _button.backgroundColor = [UIColor greenColor];
        [_button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _button;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
