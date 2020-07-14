//
//  ViewController.h
//  登陆界面
//
//  Created by 房彤 on 2020/7/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//登陆界面的组成
//用户名的提示： 输入框
//密码提示：    密码输入框
//登陆按钮
//注册按钮

//用户名密码提示
@property  UILabel *lbUerName;
@property  UILabel *lbPassWord;

//文本框
@property UITextField *tfUserName;
@property UITextField *tfPassWord;

//按钮
@property UIButton *btLogin;
@property UIButton *btRegister;

@end

