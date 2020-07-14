//
//  ViewController.m
//  手动布局视图
//
//  Created by 房彤 on 2020/7/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    SuperView *sView = [[SuperView alloc] init];
    sView.frame = CGRectMake(50, 50, 150, 150);
    sView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:sView];
    [sView creatSubViews];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(50, 700, 80, 40);
    [btn1 setTitle:@"Large" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(200, 700, 80, 40);
    [btn2 setTitle:@"Small" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    sView.tag = 101;
    
}


//放大父亲视图
- (void)pressLarge {
    
    SuperView *sView = (SuperView *)[self.view viewWithTag:101];
    sView.frame = CGRectMake(50, 50, 300, 500);
}


- (void)pressSmall {
    
    SuperView *sView = (SuperView *)[self.view viewWithTag:101];
    sView.frame = CGRectMake(50, 50, 150, 150);
}



@end
