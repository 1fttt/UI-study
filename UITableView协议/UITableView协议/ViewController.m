//
//  ViewController.m
//  UITableView协议
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
    
    
    
    /*
     
    
    //创建数据视图对象
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 896) style:UITableViewStyleGrouped];
    
    //设置代理对象
    _tableView.delegate = self;
    
    //设置数据代理
    _tableView.dataSource = self;
    
    //数据视图显示
    [self.view addSubview:_tableView];
    
    //创建一个可变数组
    _arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 'A'; i <= 'Z'; i++) {
        //定义小数组
        NSMutableArray *arraySmall = [[NSMutableArray alloc] init];
        for(int j = 1; j <= 5; j++) {
            NSString *str = [NSString stringWithFormat:@"%c%d", i, j];
            [arraySmall addObject:str];
        }
        [_arrayData addObject:arraySmall];
    }
    
    */
    
    
    
    
    _tableView  = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    //自动调整子视图大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //数据视图的头部视图的设定
    _tableView.tableHeaderView = nil;
    //数据视图的尾部视图
    _tableView.tableFooterView = nil;
    
    [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= 12; i++) {
        NSString *str = [NSString stringWithFormat:@"ft %d", i];
        [_arrayData addObject:str];
    }
    
    //当数据视图的数据源发生变化时，更新数据视图，重新加载数据
    [_tableView reloadData];
    
}

/*


//获取组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _arrayData.count;
}

//获取每组元素个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numRow = [[_arrayData objectAtIndex:section] count];
    return numRow;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *str = @"cell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:str];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    return cell;
}

//获取高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}


//获取每组的头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"头部标题";
}

//获取每组尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"尾部标题";
}

//获取头部高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}


//获取尾部高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 30;
}

 
 */
 
 
 

//返回多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayData.count;
}


//默认组数返回1
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *strID = @"ID";
    //尝试获得可复用的单元格 ，得不到返回nil
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:strID];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strID];
        
    }
    
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.r]
    
}








@end
