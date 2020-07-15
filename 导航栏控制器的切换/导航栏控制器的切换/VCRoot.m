//
//  VCRoot.m
//  导航栏控制器的切换
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置导航栏透明度 默认为YES，可透明
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = [UIColor grayColor];
    
    //默认风格 白色 UIBarStyleDefault
    //风格 颜色
   // self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.title = @"我的音乐";
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:@"···" style:UIBarButtonItemStyleDone target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
    
    
    
    
    
}

- (void)pressNext {
    
    //创建新的视图控制器
    VCSecond *vcSecond = [[VCSecond alloc] init];
    
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController:vcSecond animated:NO];
    
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
