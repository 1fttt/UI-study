//
//  ViewController.m
//  UISwitch控件
//
//  Created by 房彤 on 2020/7/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个开关对象 继承于UIview对象
    _mySwitch = [[UISwitch alloc] init];
    
    //_mySwitch.backgroundColor = [UIColor grayColor];
    
    //苹果官方控件位置设置 x，y可变  宽高不变，无论写什么值，都是固定的
    _mySwitch.frame = CGRectMake(100, 100, 80, 40);
    
    //开关状态设置
    _mySwitch.on = YES;
    //或者 [_mySwitch setOn:YES];
    
    //[_mySwitch setOn:YES animated:YES];
    //p1: 开关状态。p2:是否开启动画效果
    
    [self.view addSubview:_mySwitch];
    
    
    //设置开启状态的风格颜色
  //  [_mySwitch setOnTintColor:[UIColor redColor] ];
    
    //设置圆钮颜色
   // [_mySwitch setThumbTintColor:[UIColor whiteColor]];
    
    //设置整体风格   ????????????????????????没反应
    [_mySwitch setTintColor:[UIColor blackColor]];
    self.view.backgroundColor = [UIColor brownColor];
    
    //向开关控件添加事件函数 p1函数实现对象   p2函数对象    p3事件响应时的事件类型
    //UIControlEventValueChanged 状态发生变化时触发函数
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)swChange:(UISwitch*)sw {
    
    //on表示当前结束的状态
    if(sw.on == YES) {
        NSLog(@"开关打开");
    }
    
    NSLog(@"开关状态发生变化");
}



@end
