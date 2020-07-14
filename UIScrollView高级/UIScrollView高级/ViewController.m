//
//  ViewController.m
//  UIScrollView高级
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
    
    _scrollView = [[UIScrollView alloc] init];
    _scrollView.frame = CGRectMake(10, 10, 380, 380);
    _scrollView.bounces = NO;
    
    //是否允许通过点击屏幕让滚动视图响应事件
    //YES 滚动视图可以接受触屏事件
    //NO 不接受触屏事件
    //_scrollView.userInteractionEnabled = NO;
    
    _scrollView.contentSize = CGSizeMake(380 * 5, 380);
    
    for (int i = 0; i < 4; i++) {
        NSString *str = [NSString stringWithFormat:@"%d.jpg", i + 1];
        UIImage *image = [UIImage imageNamed:str];
        UIImageView * view= [[UIImageView alloc] init];
        view.image = image;
        view.frame = CGRectMake(10 + i * 380, 10 , 380, 380);
        [_scrollView addSubview:view];
        
    }
    
    [self.view addSubview:_scrollView];
    
    //取消按页滚动效果
    _scrollView.pagingEnabled = NO;
    
    //滚动视图画布的移动位置，偏移位置
    //功能：决定画布显示的最终图像结果
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    //将当前视图控制器作为代理对象
    _scrollView.delegate = self;
    
    
    
    
}


//当滚动视图移动时， 只要offset坐标发生变化，都会调用此函数
//参数： 调用此协议的滚动视图对象
//可以使用此函数来监控滚动视频的位置
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"x = %f", scrollView.contentOffset.x);
}


//当滚动视图结束拖动时调用此函数
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"did end drag");
}


//滚动视图即将开始被拖动时
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"即将开始");
}

//滚动视图即将结束时调用
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    
    NSLog(@"will end drag");
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"Will begin beceleatg");
}

//视图已经结束减速时调用， 视图停止的瞬间
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"停止移动");
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //_scrollView.contentOffset = CGPointMake(0, 0);
    
    //让视图移动到指定位置，动画移动
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, 380, 380) animated:YES];
}


@end
