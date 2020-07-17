//
//  ViewController.m
//  UITableView1
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //p1 数据视图位置。 p2数据视图风格    两种 普通、分组
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view  addSubview:_tableView];
    
    //创建一个可变数组
    _array = [[NSMutableArray alloc] init];
    
    for( int i = 'A'; i <= 'Z'; i++) {
        NSMutableArray *arr = [[NSMutableArray alloc] init];
        for(int j = 1; j <= 5 ; j++) {
            NSString *str = [NSString stringWithFormat:@"%c,%d", i, j];
            [arr addObject:str];
        }
        [_array addObject:arr];
    }
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _array.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger num = [[_array objectAtIndex:section] count];
    return num;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* str = @"cell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:str];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    cell.textLabel.text  = _array[indexPath.section][indexPath.row];
    return cell;
}


//单元格的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

//获取头部标题
- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"1";
}

//获取每组尾部标题
- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"2";
}

//头部高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

//尾部高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}




/*

//几个函数必须实现
//1 获取每组行数 程序在显示数据视图时会调用此函数。返回值：每组元素个数 参1数据视图对象本身 2:哪一组
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

//2。 数据视图组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}




//3。创建单元格对象函数     indexPath 索引
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellStr = @"cell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellStr];
    if(cell == nil) {
        //创建一个单元格 p1单元格样式 p2单元格的复用标记
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    NSString *str = [NSString stringWithFormat:@"%ld, %ld", indexPath.section, indexPath.row];
    
    cell.textLabel.text = str;
    return cell;
    

}



*/

- (UIView *ableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
}
   


- 

@end
