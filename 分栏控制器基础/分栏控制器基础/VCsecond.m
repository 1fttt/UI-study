//
//  VCsecond.m
//  分栏控制器基础
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "VCsecond.h"

@interface VCsecond ()

@end

@implementation VCsecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem *tabB = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:102];
    self.tabBarItem = tabB;
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
