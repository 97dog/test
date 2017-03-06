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
    
    UITextField * textField =[[UITextField alloc] initWithFrame:CGRectMake(50, 100, 280, 30)];
    textField.borderStyle=UITextBorderStyleRoundedRect;//边框风格 line 线性风格 none 无风格 bezel  bezel风格
    textField.placeholder=@"请输入文字";
    textField.textColor=[UIColor redColor];
    textField.font=[UIFont systemFontOfSize:14];
    textField.textAlignment=NSTextAlignmentCenter;//对齐模式
    //左视图
    UIImageView * imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tupian"]];
    textField.leftView=imageview;
    textField.leftViewMode=UITextFieldViewModeAlways;//总是显示 never 从不显示 whileEditing 编辑时显示 UnlessEditing 非编辑时显示
    //右视图
    UIImageView * rightimageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tupian"]];
    textField.rightView=rightimageview;
    textField.rightViewMode=UITextFieldViewModeAlways;
    
    textField.delegate=self;//监听用户输入信息
    [self.view addSubview:textField];
    
}
//监听用户输入信息
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
if(string.length>0)
{
    if ([string characterAtIndex:0]<'0'||[string characterAtIndex:0]>'9') {
        NSLog(@"请输入数字");
        return NO;
    }
    if (textField.text.length+string.length>11) {
        NSLog(@"超过11位数啦");
        return NO;
    }
}
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
