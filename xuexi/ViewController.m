//
//  ViewController.m
//  xuexi
//
//  Created by mac on 2017/3/4.
//  Copyright © 2017年 one97dog. All rights reserved.
//

#import "ViewController.h"
int tip=0;
@interface ViewController ()<UITextFieldDelegate>//监听用户输入信息

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
    
    UISwitch * swi=[[UISwitch alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    swi.onTintColor=[UIColor greenColor];//开启填颜色
    swi.tintColor=[UIColor redColor];//关闭颜色
    swi.thumbTintColor =[UIColor orangeColor];//开关颜色
    [swi addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventValueChanged];//当value值发生改变
    [self.view addSubview:swi];
                    
}

-(void)changeColor:(UISwitch *)swi{
    if (swi.isOn) {//isOn可以判断uiswitch状态
        self.view.backgroundColor=[UIColor redColor];
        
    }else{
        self.view.backgroundColor=[UIColor whiteColor];
        
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
