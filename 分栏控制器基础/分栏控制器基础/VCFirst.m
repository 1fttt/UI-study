//
//  VCFirst.m
//  分栏控制器基础
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建分栏按钮对象   p2显示图片图标。 p3设置按钮的tag
    //UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"11" image:nil tag:101];
    
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:101];
    
    //按钮右上角的提示信息
    //通常用来提示未读信息
    tabBarItem.badgeValue = @"99+";
    self.tabBarItem = tabBarItem;
    
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
