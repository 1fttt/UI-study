//
//  ViewController.h
//  UITableView1
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//实现数据视图的普通协议
//数据视图的普通事件处理
UITableViewDelegate,
//实现数据视图的数据代理协议
UITableViewDataSource
>

//定义数据视图对象 显示大量相同格式的信息视图
@property UITableView *tableView;
//声明数据源
@property NSMutableArray *array;
@end

