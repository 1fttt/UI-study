//
//  ViewController.m
//  登陆界面
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
    
    //用户名提示标签创建
    _lbUerName = [[UILabel alloc] init];
    _lbUerName.frame = CGRectMake(50, 60, 80, 40);      //位置
    _lbUerName.text = @"用户名:";                         //
    _lbUerName.font = [UIFont systemFontOfSize:20];     //字体及大小
    _lbUerName.textAlignment = NSTextAlignmentLeft;     //居左
    
    //用户密码提示
    _lbPassWord = [[UILabel alloc] init];
    _lbPassWord.frame = CGRectMake(50, 140, 80, 40);
    _lbPassWord.text  = @"密码:";
    _lbPassWord.font = [UIFont systemFontOfSize:20];
    _lbPassWord.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入框
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(150, 60, 180, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    //密码输入框
    _tfPassWord = [[UITextField alloc] init];
    _tfPassWord.frame = CGRectMake(150, 140, 180, 40);
    _tfPassWord.placeholder = @"请输入密码";
    _tfPassWord.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassWord.secureTextEntry = YES;
    
    //登陆按钮
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(100, 300, 120, 80);
    [_btLogin setTitle:@"登陆" forState:UIControlStateNormal];
    [_btLogin addTarget:self action: @selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    //
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(180, 300, 120, 80);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self.view addSubview:_lbUerName];
    [self.view addSubview:_lbPassWord];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassWord];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    
}

//登陆事件函数
- (void)pressLogin {
    NSString *strName = @"ft";
    NSString *strPass = @"123";
    NSString *strTextName = _tfUserName.text;
    NSString *strTextPass = _tfPassWord.text;
    
    if([strName isEqualToString:strTextName ]&& [strPass isEqualToString:strTextPass])  {
        NSLog(@"用户名密码正确");
    
    } else {
        NSLog(@"用户名或密码错误");
    }

}


//注册事件函数
- (void)pressRegister {
    
}


//
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   //回收键盘
    [_tfUserName resignFirstResponder];
    [_tfPassWord resignFirstResponder];
}

@end
