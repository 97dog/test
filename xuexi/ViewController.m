//
//  ViewController.m
//  xuexi
//
//  Created by mac on 2017/3/4.
//  Copyright © 2017年 one97dog. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UISearchBarDelegate>

//@property (nonatomic, strong) UIView *testView;
//@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController






- (void)viewDidLoad
{
    [super viewDidLoad];
    UISearchBar * searchBar=[[UISearchBar alloc]initWithFrame:CGRectMake(0, 20, 375, 30)];
    searchBar.tintColor=[UIColor redColor];
    searchBar.placeholder=@"请输入搜索内容";
    searchBar.showsScopeBar=YES;
    searchBar.showsCancelButton=YES;
    searchBar.showsBookmarkButton=YES;
    searchBar.showsSearchResultsButton=YES;
    [searchBar setScopeButtonTitles:@[@"one",@"two",@"three"]];
    [self.view addSubview:searchBar];
    
}
//单击切换扩展栏上按钮时触发的方法
-(void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope{
       NSLog(@"1");
}





/*
//搜索框中字符将要改变时触发的方法
-(BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(nonnull NSString *)text{
    NSLog(@"wo caonirmdaxig");
    return YES;
    
}
//搜索框中字符已经改变后触发的方法
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(nonnull NSString *)searchText{
    NSLog(@"1");
}
//单击图书按钮触发的方法

-(void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"1");
}
//单击取消按钮触发的方法
-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    NSLog(@"1");
}

//单击搜索结果按钮触发的方法
-(void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar{
    NSLog(@"1");
}
//单击键盘上的搜索触发的方法
-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
        NSLog(@"请输入数字");
}
//搜索栏将要开始编辑时触发的方法
-(BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar{
    return YES;
}
//搜索栏已经结束编辑时触发的方法
-(BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar{
    NSLog(@"dasdasd");
    return YES;
}

//搜索栏已经开始编辑时触发的方法
-(void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    NSLog(@"1");
}

//搜索栏已经结束编辑时触发的方法

-(void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{
    NSLog(@"1");
}

*/




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
