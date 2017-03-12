//
//  ViewController.m
//  xuexi
//
//  Created by mac on 2017/3/4.
//  Copyright © 2017年 one97dog. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

//@property (nonatomic, strong) UIView *testView;
//@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController






- (void)viewDidLoad
{
    [super viewDidLoad];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIAlertController * alertView =[UIAlertController alertControllerWithTitle:@"标题" message:@"警告的内容" preferredStyle:UIAlertControllerStyleAlert];//实现对警告视图的创建和设置//第一个参数视图标题 第2个参数为警告视图的内容，第3参数 为警告视图的风格
   
    
    
    /*UIAlertAction * action =[UIAlertAction actionWithTitle:@"按钮" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {//第一个参数为按钮标题 2个参数为按钮的风格 3个风格
        NSLog(@"click");
    }];*/

    UIAlertAction * action2 =[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"取消");
    }];
    
    UIAlertAction *action3 =[UIAlertAction actionWithTitle:@"注意" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"注意");
    }];
    
    
    /*[alertView addAction:action];*/
    [alertView addAction:action2];
    [alertView addAction:action3];
    [alertView addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder=@"place";//方法将警告框中 添加一个输入框
    }];
    [self presentViewController:alertView animated:YES completion:nil];
    

    
       
}
                              



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
