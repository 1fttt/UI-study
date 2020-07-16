//
//  ViewController.h
//  UITableView协议
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<

//数据代理协议
UITableViewDataSource,

//普通代理协议
UITableViewDelegate
>

//定义数据视图对象
@property UITableView *tableView;

//声明一个数据源
@property NSMutableArray *arrayData;


//添加导航按钮
@property UIBarButtonItem *btnEdit;
@property UIBarButtonItem *btnFinsh;
@property UIBarButtonItem *btnDelete;

//设置编辑状态
@property BOOL isEdit;


@end

