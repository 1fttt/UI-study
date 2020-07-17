//
//  ViewController.h
//  UITableView2
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource

>
//数据视图
@property UITableView *tableView;
@property NSMutableArray *array;

//添加导航按钮
@property UIBarButtonItem *btnEdit;
@property UIBarButtonItem *btnFinsh;
@property UIBarButtonItem *btnDelete;

//设置编辑状态
@property bool isEdit;

@end

