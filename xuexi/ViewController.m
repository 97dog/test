//
//  ViewController.m
//  xuexi
//
//  Created by mac on 2017/3/4.
//  Copyright © 2017年 one97dog. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>

//@property (nonatomic, strong) UIView *testView;
//@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIPickerView *picker =[[UIPickerView alloc]initWithFrame:CGRectMake(50, 100, 280, 150)];
    picker.delegate=self;
    picker.dataSource=self;
    [self.view addSubview:picker];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{//设置分区数
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{//设置分区行数
    return 10;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [NSString stringWithFormat:@"%lu 分区%lu 数据",component,row];//设置分区forcomponent 每一行的数据 component 和row是行列
    
    


}
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 44;
}
-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    return  140;
    
}
-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"%lu,%lu",row,component);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
