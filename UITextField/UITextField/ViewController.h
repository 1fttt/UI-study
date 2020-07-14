//
//  ViewController.h
//  UITextField
//
//  Created by 房彤 on 2020/7/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

//定义一个textfield 属性 文本输入区域
//只能输入一行文字
@property UITextField *textfield;

@end

