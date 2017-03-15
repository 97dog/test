//
//  ViewController.m
//  xuexi
//
//  Created by mac on 2017/3/4.
//  Copyright © 2017年 one97dog. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UISearchBarDelegate,UIAlertViewDelegate>

//@property (nonatomic, strong) UIView *testView;
//@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController






- (void)viewDidLoad
{
    [super viewDidLoad];
    UIDatePicker * dataPicke=[[UIDatePicker alloc]initWithFrame:CGRectMake(50, 100, 280, 150)];
    dataPicke.datePickerMode=UIDatePickerModeTime;//time时间模式 Date日期模式 DateAndTime 日期和时间模式 CountDownTimer 计时模式
    [dataPicke addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:dataPicke];
}
-(void)change:(UIDatePicker *)picker{
    NSLog(@"%@",picker.date);

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UIAlertView * alert =[[UIAlertView alloc]initWithTitle:@"标题" message:@"内容" delegate:self  cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"click");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
