//
//  ViewController.m
//  xuexi
//
//  Created by mac on 2017/3/4.
//  Copyright © 2017年 one97dog. All rights reserved.
//

#import "ViewController.h"
int tip=0;
@interface ViewController ()

@end


@implementation ViewController


+ (void)initialize{//类的初始化方法
    [super initialize];
    NSLog(@"%d initialize",++tip );
}

- (instancetype)init{//对象初始化方法
    self =[super init];
    if(self){
        
    }
    NSLog(@"%d init",++tip);
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder{
    self=[super initWithCoder:coder];//从归档初始化
    if (self) {
        
    }
    NSLog(@"%d initWithCoder",++tip);
    return self;
}
-(void)awakeFromNib{//从nib 文件初始化
    [super awakeFromNib];
    NSLog(@"%d awakeFromNib",++tip);
}

- (void)loadView{//加载视图
    [super loadView];
    NSLog(@"%d loadView",++tip);
}
/*
-(void)changeColor{//button selector选择的方法随机更改背景颜色
    self.view.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}
*/


- (void)viewDidLoad {//将要加载视图
    [super viewDidLoad];
    UIStepper * stepper=[[UIStepper alloc]init];
    stepper.center=CGPointMake(100, 100);//用于设置控件中心位置坐标
    stepper.continuous=YES;//为yes 添加的触发方法会一直连续改变，触发方法才会执行
    stepper.autorepeat=YES;//设置为no用户手指抬起完成单击动作
    stepper.wraps=YES;//进步器是循环 yes当最大的时候会从最小开始
    stepper.stepValue=1;//步值就是点一下 加多少
    stepper.tintColor=[UIColor redColor]; //控件颜色
    [self.view addSubview:stepper];
    [stepper addTarget:self action:@selector(click:) forControlEvents:UIControlEventValueChanged];
    
}
-(void)click:(UIStepper *)step{
    NSLog(@"%f",step.value);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
