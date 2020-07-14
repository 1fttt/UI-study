//
//  ViewController.m
//  UIScrollView滚动视图
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
    
    UIScrollView *sv = [[UIScrollView alloc] init];
    sv.frame = CGRectMake(0, 0, 414, 896);
    
    //是否按照整页来滚动视图
    sv.pagingEnabled = NO;
    
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    
    //设置画布的大小， 画布显示在滚动视图内部，一般于frame
    sv.contentSize = CGSizeMake(414, 896 * 5);
    
    //是否可以边缘弹动效果
    sv.bounces = YES;
    
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    
    //开启纵向弹动效果
    sv.alwaysBounceVertical = YES;
    
    //显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    
    //显示纵向滚动条
    sv.showsVerticalScrollIndicator = YES;
    
    //设置背景颜色
    sv.backgroundColor = [UIColor grayColor];
    
    for(int i = 0; i < 5; i++) {
        NSString *str = [NSString stringWithFormat:@"%d.jpg", i+1];
        UIImage *image = [UIImage imageNamed:str];
        UIImageView *view = [[UIImageView alloc] initWithImage:image];
        view.frame = CGRectMake(0, 896 * i, 414, 896);
        [sv addSubview:view];
    }
    
    [self.view addSubview:sv];
    
    
    
    
}


@end
