//
//  ViewController.h
//  UIScrollView高级
//
//  Created by 房彤 on 2020/7/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//当前视图控制器要实现协议UIScrollView的协议函数
<UIScrollViewDelegate>

@property UIScrollView *scrollView;
@end

