//
//  VCRoot.m
//  导航栏和工具栏
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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //设置导航栏风格颜色。两种风格    黑、默认
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    //将风格设为不透明的
    self.navigationController.navigationBar.translucent = NO;
    
    //设置导航栏的颜色
    //self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    
    //设置导航栏元素项目按钮的风格颜色
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
   
    //隐藏导航栏。默认为no
    //self.navigationController.navigationBar.hidden = YES;
    //self.navigationController.navigationBarHidden = YES;
    
    
    
    self.title = @"QQ";
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"···" style:UIBarButtonItemStyleDone target:nil action:nil];
    
    self.navigationItem.rightBarButtonItem = btn;
    
    //---------------------------------------------------
    //工具栏。 默认工具栏隐藏    NO不隐藏
    self.navigationController.toolbarHidden = NO;
    
    //是否透明
    self.navigationController.toolbar.translucent = NO;
    
    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithTitle:@"联系人" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem *btn2 = [[UIBarButtonItem alloc] initWithTitle:@"动态" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    UIBarButtonItem *btn3 = [[UIBarButtonItem alloc] initWithTitle:@"消息" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //自定义button
    UIButton *btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnImage setImage:[UIImage imageNamed:@"01.png"] forState:UIControlStateNormal];
    
    btnImage.frame = CGRectMake(0, 0, 60, 60);
    UIBarButtonItem *btn4 = [[UIBarButtonItem alloc] initWithCustomView:btnImage];
    
    //固定宽度占位按钮
    UIBarButtonItem *btn01 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    btn01.width = 100;
    
    //创建自动计算宽度按钮
    UIBarButtonItem *btn02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    
    NSArray *arrayBtns = [NSArray arrayWithObjects:btn3, btn02, btn1,btn02,  btn4,btn02, btn2, nil];
    self.toolbarItems = arrayBtns;
    
    
    
    
}


- (void)pressNext {
    VCSecond *vcRoot = [[VCSecond alloc] init];
    [self.navigationController pushViewController:vcRoot animated:YES];
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
