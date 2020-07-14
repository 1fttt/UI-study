//
//  SuperView.h
//  手动布局视图
//
//  Created by 房彤 on 2020/7/14.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperView : UIView

@property UIView *view1;
@property UIView *view2;
@property UIView *view3;
@property UIView *view4;
@property UIView *view5;

- (void)creatSubViews;
@end

NS_ASSUME_NONNULL_END
