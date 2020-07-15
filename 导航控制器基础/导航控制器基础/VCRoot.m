//
//  VCRoot.m
//  导航控制器基础
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //设置导航栏的标题文字
    self.title = @"根视图";
    //设置导航元素项目的标题
    //如果没有设置self.navigationItem.title ，为nil
    //系统会使用self.title为标题 （将self.title赋给navi... ，再设置标题）
    //如果navigationItem.title不为空，将navi..设置为标题内容
    //self.navigationItem.title = @"setting";

    //创建一个导航栏左侧按钮
    //根据title文字来创建按钮
    //p1 按钮上的文字  p2按钮风格。 p3事件拥有者。 p4按钮事件
    //自定义
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
   
    //系统风格创建按钮 只需要指定风格样式，系统风格的按钮上的文字不能改变（没有填的地方）
   // UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(pressLeft)];
    
    //将导航元素项的左侧按钮赋值
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    
    //UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"···" style:UIBarButtonItemStyleDone target:self action:@selector(pressRight)];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(pressRight)];
    
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    //标签对象
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 70, 40)];
    label.backgroundColor = [UIColor redColor];
    label.text = @"发送";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blueColor];
    
    //将任何类型的控件添加到导航按钮的方法
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithCustomView:label];
    
    //创建按钮数组
    NSArray *arrBtn = [NSArray arrayWithObjects:rightBtn, btn, nil];
    
    self.navigationItem.rightBarButtonItems = arrBtn;
    
    
}

- (void)pressLeft {
    NSLog(@"左侧按钮被按下");
}

- (void)pressRight {
    NSLog(@"右侧按钮被按下");
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
