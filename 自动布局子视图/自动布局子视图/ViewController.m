//
//  ViewController.m
//  自动布局子视图
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
    
    _superView = [[UIView alloc] init];
    _superView.frame = CGRectMake(20, 20, 280, 280);
    _superView.backgroundColor = [UIColor blueColor];
    
    
    //位置相对于父视图
    _label1 = [[UILabel alloc] init];
    _label1.frame = CGRectMake(0, 0, 40, 40);
    _label1.text = @"1";
    _label1.backgroundColor = [UIColor grayColor];
    
    _label2 = [[UILabel alloc] init];
    _label2.frame = CGRectMake(280 - 40, 0, 40, 40);
    _label2.text = @"2";
    _label2.backgroundColor = [UIColor grayColor];
    
    _label3 = [[UILabel alloc] init];
    _label3.frame = CGRectMake(0, 280 - 40, 40, 40);
    _label3.text = @"3";
    _label3.backgroundColor = [UIColor grayColor];

    _label4 = [[UILabel alloc] init];
    _label4.frame = CGRectMake(280 - 40, 280 - 40, 40, 40);
    _label4.text = @"4";
    _label4.backgroundColor = [UIColor grayColor];
    
    [_superView addSubview:_label1];
    [_superView addSubview:_label2];
    [_superView addSubview:_label3];
    [_superView addSubview:_label4];
    
    [self.view addSubview:_superView];

    
    _viewC = [[UIView alloc] init];
    _viewC.frame = CGRectMake(0, 0, _superView.bounds.size.width, 40);
    _viewC.center = CGPointMake(280 / 2, 280 / 2);
    _viewC.backgroundColor = [UIColor grayColor];
    [_superView addSubview:_viewC];
    
    
    //自动布局属性设置， 通过此变量来调整视图在父亲视图中的位置和大小
    
    //距父亲视图左侧可以变化
    _label2.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    
    _viewC.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    _label3.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    
    _label4.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
   
    
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    static BOOL isLarge = NO;
   

   // if (isLarge == NO) {
   //     _superView.frame = CGRectMake(20, 20, 100, 100);
   //     isLarge = YES;
   // } else {
        _superView.frame = CGRectMake(20, 20, 390, 500);
        
    //}

}


@end
