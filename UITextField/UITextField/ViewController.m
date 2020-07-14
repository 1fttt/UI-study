//
//  ViewController.m
//  UITextField
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

    //创建一个文本输入区对象
    self.textfield = [[UITextField alloc] init];
    
    //位置及大小
    self.textfield.frame = CGRectMake(100, 100, 180, 40);
    
   // UITextField 继承于 UIControl , UIControl 继承于 UIView
    
    //设置textfield内容文字
    self.textfield.text = @"用户名";
    
    //字体 大小
    self.textfield.font = [UIFont systemFontOfSize:14];
    
    //颜色
    self.textfield.textColor = [UIColor blackColor];
    
    //设置边框风格
    
    self.textfield.borderStyle = UITextBorderStyleRoundedRect; //圆角风格
   // self.textfield.borderStyle = UITextBorderStyleLine;  //线框风格
   //self.textfield.borderStyle = UITextBorderStyleBezel;  //线框
   //self.textfield.borderStyle = UITextBorderStyleNone;  //无边框风格
    
    //设置虚拟键盘风格
    //默认风格。UIKeyboardTypeDefault
    //字母数字组合风格 UIKeyboardTypePhonePad
    //纯数字风格 UIKeyboardTypeNumberPad
    self.textfield.keyboardType = UIKeyboardTypePhonePad;
    
    //提示文字信息。浅灰色提醒
    //当text属性为空，显示此条信息
    self.textfield.placeholder = @"请输入用户名..";

    //是否作为密码输入
    //YES: 处理，圆点加密
    self.textfield.secureTextEntry = YES;
    
    [self.view addSubview:self.textfield];
    
    //设置代理对象
    self.textfield.delegate = self;


}


//点击屏幕空白处调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //是虚拟键盘收回去，不再作为第一消息响应
    [self.textfield resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始编辑");
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.textfield.text = @"";
    NSLog(@"编辑结束");
    
}

//是否可以进行输入 YES可以输入 默认YES  NO不能输文字 当权限不够时 可以NO 不弹出对话框
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}

//是否可以结束输入。可以结束输入。  NO 不能结束（例如输密码不够时）
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField:(UITextField *)textField {
    return YES;
}









@end
