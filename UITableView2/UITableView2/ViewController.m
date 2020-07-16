//
//  ViewController.m
//  UITableView2
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
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    
    //自动调整子视图大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    
    //设置代理
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    
    //数据视图。头部视图 尾部视图
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
    
    [self.view addSubview:_tableView];
    
    _array = [[NSMutableArray alloc] init];
    for(int i = 1; i < 16; i++) {
        NSString *str = [NSString stringWithFormat:@"a%d", i ];
        [_array addObject:str];
    }
    
    //当数据的数据源发生变化 更新数据视图，重新加载数据
    [_tableView reloadData];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *str = @"ID";
    
    //尝试获得可以复用的单元格。但不一定获得到。得不到返回nil
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:str];
    
    //如果没有获得到
    if（cell == nil) {
        cell = [UITableViewCell alloc] init
        
    }
}











@end
