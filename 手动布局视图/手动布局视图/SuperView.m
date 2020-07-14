//
//  SuperView.m
//  手动布局视图
//
//  Created by 房彤 on 2020/7/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)creatSubViews {
    //左上角
    _view1 = [[UIView alloc] init];
    _view1.frame = CGRectMake(0, 0, 40, 40);
    _view1.backgroundColor = [UIColor redColor];
    
    //右上角
    _view2 = [[UIView alloc] init];
    _view2.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    _view2.backgroundColor = [UIColor redColor];
       
    
    _view3 = [[UIView alloc] init];
    _view3.frame = CGRectMake(self.bounds.size.width - 40, self.bounds.size.height - 40, 40, 40);
    _view3.backgroundColor = [UIColor redColor];
       
    
    _view4 = [[UIView alloc] init];
    _view4.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    _view4.backgroundColor = [UIColor redColor];
    
    _view5 = [[UIView alloc] init];
    _view5.frame = CGRectMake(0, self.bounds.size.height / 2 - 20, self.bounds.size.width, 40);
    _view5.backgroundColor = [UIColor redColor];
    
    
    [self addSubview:_view1];
    [self addSubview:_view2];
    [self addSubview:_view3];
    [self addSubview:_view4];
    [self addSubview:_view5];
    
    
}


//当需要重新布局时调用此函数
//通过此函数重新设定子视图的位置
//手动调整子视图位置   自己写.frame = CG..
- (void)layoutSubviews {
    _view1.frame = CGRectMake(0, 0, 40, 40);
    _view2.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    _view3.frame = CGRectMake(self.bounds.size.width - 40, self.bounds.size.height - 40, 40, 40);
    _view4.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    _view5.frame = CGRectMake(0, self.bounds.size.height / 2 - 20, self.bounds.size.width, 40);
       
}





@end
