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
@property (nonatomic,strong)UIButton * btn;
@property (nonatomic,strong)UIButton * btnTwo;
@property (nonatomic,strong)UIButton * btnThree;
@property (nonatomic,strong)UIButton * btnFour;
@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.btn];
    [self.view addSubview:self.btnTwo];
    [self.view addSubview:self.btnThree];
    [self.view addSubview:self.btnFour];
}
-(UIButton *)btn{
    if (!_btn)
    {
        _btn=[UIButton buttonWithType:UIButtonTypeCustom];
        _btn.frame=CGRectMake(100, 100, 100, 100);
        _btn.backgroundColor=[UIColor redColor];
        _btn.layer.masksToBounds=YES;//就是圆角开关
        _btn.layer.cornerRadius=10;//半径
    }
    return _btn;
}

-(UIButton *)btnTwo{
    if (!_btnTwo)
    {
        _btnTwo=[UIButton buttonWithType:UIButtonTypeCustom];
        _btnTwo.frame=CGRectMake(50, 50, 50, 50);
        _btnTwo.backgroundColor=[UIColor greenColor];
        _btnTwo.layer.masksToBounds=YES;
        _btnTwo.layer.cornerRadius=25;
    }
    return _btnTwo;
}

-(UIButton *)btnThree{
    if (!_btnThree)
    {
        _btnThree=[UIButton buttonWithType:UIButtonTypeCustom];
        _btnThree.frame=CGRectMake(200, 50, 50, 50);
        _btnThree.backgroundColor=[UIColor yellowColor];
        _btnThree.layer.borderColor=[UIColor grayColor].CGColor;//边框颜色
        _btnThree.layer.borderWidth=2;//边框大小
    }
    return _btnThree;
}
-(UIButton *)btnFour{
    if (!_btnFour)
    {
        _btnFour=[UIButton buttonWithType:UIButtonTypeCustom];
        _btnFour.frame=CGRectMake(150, 250, 50, 50);
        _btnFour.backgroundColor=[UIColor orangeColor];
        _btnFour.layer.shadowColor=[UIColor grayColor].CGColor;//阴影颜色
        _btnFour.layer.shadowOffset=CGSizeMake(10, 10);//阴影位置
        _btnFour.layer.shadowOpacity=1;//透明度
    }
    return _btnFour;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
