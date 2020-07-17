//
//  ViewController.m
//  UITableView单元格
//
//  Created by 房彤 on 2020/7/17.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
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
        [self createBtn];
}

- (void)createBtn {
        _isEdit = NO;
        _btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"1" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)];
        _btnFinsh = [[UIBarButtonItem alloc] initWithTitle:@"finish" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)];
        _btnDelete = [[UIBarButtonItem alloc] initWithTitle:@"delete" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)];
        self.navigationItem.rightBarButtonItem = _btnEdit;
        
    }



//单元格显示效果协议
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
 
    //默认删除 UITableViewCellEditingStyleDelete   none//前面什么都没有。insert 加号
    return UITableViewCellEditingStyleInsert | UITableViewCellEditingStyleDelete; //多选 打勾
    
}


//可以显示编辑状态 当手指在单元格移动时
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSLog(@"delete");
    
    [_array removeObjectAtIndex:indexPath.row];
    [_tableView reloadData];
    
    
}


//选中单元格
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"选中单元格 %ld, %ld", indexPath.section, indexPath.row);
}



//选中单元格
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"取消选择单元格%ld %ld", indexPath.section, indexPath.row);
}







    - (void)pressEdit{
        _isEdit = YES;
        self.navigationItem.rightBarButtonItem = _btnFinsh;
        [_tableView setEditing:YES];
        self.navigationItem.leftBarButtonItem = _btnDelete;
    }

    - (void)pressFinish {
        _isEdit = NO;
        self.navigationItem.rightBarButtonItem = _btnEdit;
        [_tableView setEditing:NO];
        self.navigationItem.leftBarButtonItem = nil;
        
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
    if(cell == nil) {
        //风格 value1 在后面 value2 在一起。subtitle 下面 default没有
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
        
    cell.textLabel.text = [_array objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"ft";
    NSString *str1 = [NSString stringWithFormat:@"02.png"];
    UIImage *view = [UIImage imageNamed:str1];
    cell.imageView.image = view;
        return cell;
    }


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}





@end
