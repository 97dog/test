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
    NSLog(@"%d viewDidLoad",++tip);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
