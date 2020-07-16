//
//  ViewController.h
//  UITableView基础
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

<
//实现数据视图的普通协议
//数据视图的普通事件处理
UITableViewDelegate,

//实现数据视图的数据代理协议
//处理数据视图的数据代理
UITableViewDataSource

>

//定义数据视图对象。数据视图用来显示大量相同格式的大量信息的视图
//例如 电话通讯录，QQ好友，朋友圈信息
@property UITableView *tableView;




@end


