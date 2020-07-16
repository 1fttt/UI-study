//
//  ViewController.m
//  UITableView基础
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建数据视图 p1数据视图位置   p2数据视图风格 两种。plain普通。 grouped分组风格
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //设置数据视图的代理对象
    _tableView.delegate = self;
    
    //设置数据视图的数据源对象
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    
    
}

//获取每组元素的个数（行数）
//必须要实现的协议函数 程序在显示数据视图时会调用此函数 返回值为每组元素个数
//p1 数据视图对象本身   p2哪一组需要的行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


//设置数组视图的组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//创建单元格对象函数 p1    p2 组数
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellStr = @"我的好友";
    
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellStr];
    
    if(cell == nil) {
        //创建一个单元格对象 p1单元格样式。 p2单元格复用标记
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
        
    }
    NSString *str = [NSString stringWithFormat:@"%ld行", indexPath.row];
    cell.textLabel.text = str;
    return cell;
}

@end
