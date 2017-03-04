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
-(void)changeColor{//button selector选择的方法随机更改背景颜色
    self.view.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}

- (void)viewDidLoad {//将要加载视图
    [super viewDidLoad];
    UILabel * label =[[UILabel alloc]initWithFrame:CGRectMake(20,100, 370,100)];
    label.text=@"Hollo World wo ssdsad  dsa dsad sad sa djov  dasod sajodjsaod ";
    label.numberOfLines=0;
    label.backgroundColor=[UIColor redColor];
    label.font=[UIFont systemFontOfSize:23];
    label.textColor=[UIColor whiteColor];
    label.textAlignment=NSTextAlignmentCenter;//设置对齐模式
    label.shadowColor=[UIColor greenColor];//设置阴影颜色
    label.shadowOffset=CGSizeMake(5, 10);//设置阴影的偏移量
    [self.view addSubview:label];//添加到当前视图
    //以下是button
    UIButton * button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(40, 100, 240, 30);
    button.backgroundColor=[UIColor redColor];
    [button setTitle:@"点我一下" forState:UIControlStateNormal];//normal正常的意思
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];//upinside算是点击的意思吧
    //down 手指按下时触发
    //downRepeat 重复按下时触发
    //Draginside 拖滑移动触发
    //DragOutside 拖到控件外触发
    //DragEnter 拖动到控件内触发
    //DragExit 拖动结束时触发
    //UpInside 按下并且范围内抬起 ／／也就是普通的按钮按了，松开吧
    //UpOutside 按下并在范围外抬起
    //Cabcel 单击被取消时触发
    //Changed 控件的value 值改变时触发
    [self.view addSubview:button];//添加到当前视图
    NSLog(@"%d viewDidLoad",++tip);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
