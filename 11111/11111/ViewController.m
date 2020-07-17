//
//  ViewController.m
//  11111
//
//  Created by 房彤 on 2020/7/17.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController





- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style
        reuseIdentifier:reuseIdentifier];
    if (self) {
        self.label1 = [[UILabel alloc] init];
        [self.contentView addSubview:_label1];
        
        self.label2 = [[UILabel alloc] init];
        [self.contentView addSubview:_label2];
        
        self.btn = [[UIButton alloc] init];
        [self.contentView addSubview:_btn];
    }
    return self;
}
- (void) layoutSubviews {
    [super layoutSubviews];
    
    _btn.frame = CGRectMake(3, 7, 35, 35);
    _label1.frame = CGRectMake(55, 0, 150, 50);
    
}


//--------------------------

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


   //tableview
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.tableView registerNib:[AccountTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:self.tableView];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 120;
    } else if (indexPath.section == 5) {
        return 80;
    } else {
        return 50;
    }
}


//返回每组行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = [NSArray arrayWithObjects:@1, @1, @5, @9, @4, @1, nil];
    return [array[section] intValue];
    // !!!!!!!!!!!!!!
}

//返回分组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}

//返回每行的单元格
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    
    
    NSString *str = @"cell";
    UITableViewCell *cell = nil;
    UITableViewCell *cell01 = nil;
    UITableViewCell *cell02 = nil;
    UITableViewCell *cell04 = nil;
    UITableViewCell *cell05 = nil;
    
    cell = [_tableView dequeueReusableCellWithIdentifier:str];
    cell01 = [_tableView dequeueReusableCellWithIdentifier:@"cell01"];
    cell02 = [_tableView dequeueReusableCellWithIdentifier:@"cell02"];
    cell04 = [_tableView dequeueReusableCellWithIdentifier:@"cell04"];
    cell05 = [_tableView dequeueReusableCellWithIdentifier:@"cell05"];
    
    if(indexPath.section == 0){
        if(cell01 == nil){
            cell01 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell01"];
           // cell01.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
            
            UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 70, 50, 25)];
            btn2.layer.masksToBounds = YES;
            btn2.layer.borderWidth = 0.9;
            btn2.layer.borderColor = [UIColor grayColor].CGColor;
            btn2.layer.cornerRadius = 10;
            [btn2 setTitle:@"Lv10" forState:UIControlStateNormal];
            [btn2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 20, 80, 40)];
            btn.layer.masksToBounds = YES;
            btn.layer.borderWidth = 0.5;
            btn.layer.borderColor = [UIColor grayColor].CGColor;
            btn.layer.cornerRadius = 5;
            [btn setTitle:@"签到" forState:UIControlStateNormal];
            [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [btn setImage:[UIImage imageNamed:@"签到图"] forState:UIControlStateNormal];
            [btn setTitle:@"已签到" forState:UIControlStateSelected];
//            [btn setImage:nil forState:UIControlStateSelected];
            
            [btn addTarget:self action:@selector(pressRight:) forControlEvents:UIControlEventTouchUpInside];
            
            [cell01.contentView addSubview:btn2];
            [cell01.contentView addSubview:btn];
        }
        cell01.textLabel.text = @"阡陌";
        cell01.imageView.image = [UIImage imageNamed:@"6.jpg"];
        return cell01;
    }
    else if((indexPath.section == 2 && indexPath.row == 1) || (indexPath.section == 3 && indexPath.row == 2)){
        if(cell02 == nil){
            cell02 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell02"];
        }
        NSArray *arrayss = [NSArray arrayWithObjects:@"商城",@"个性换肤", nil];
        NSArray *arrayst = [NSArray arrayWithObjects:@"高丝蛋白水",@"自选颜色", nil];
        cell02.textLabel.text = arrayss[indexPath.section - 2];
        cell02.imageView.image = [UIImage imageNamed:arrayss[indexPath.section - 2]];
        cell02.detailTextLabel.text = arrayst[indexPath.section -2];
        return cell02;
    }
    else if(indexPath.section == 3 && indexPath.row == 3){
        if(cell04 == nil){
            cell04 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell04"];
            
            UISwitch *mySwitch = [[UISwitch alloc] init];
            mySwitch.frame = CGRectMake(350, 15, 80, 40);
            mySwitch.on = YES;
            [cell04.contentView addSubview:mySwitch];
        }
        cell04.textLabel.text = @"夜间模式";
        cell04.imageView.image = [UIImage imageNamed:@"夜间模式"];
        return cell04;
    }
    else if(indexPath.section == 5){
        if(cell05 == nil){
            cell05 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell05"];
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(180, 10, 80, 40)];
            [btn setTitle:@"退出登录" forState:UIControlStateNormal];
           [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

            //btn.titleLabel.textColor = [UIColor redColor];
            [btn addTarget:self action:@selector(pressAlert:) forControlEvents:UIControlEventTouchUpInside];
            [cell05.contentView addSubview:btn];
            
        }
//        cell05.textLabel.text = @"退出登录";
//        cell05.textLabel.textAlignment = NSTextAlignmentCenter;
        return cell05;
    }
    else{
        if(cell == nil){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        cell.textLabel.text = _array[indexPath.section][indexPath.row];
        cell.imageView.image =[UIImage imageNamed:_array[indexPath.section][indexPath.row]];
        return cell;
    }
}





//获取头部标题
- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"";
}

//获取尾部标题
- (NSString *) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @" 2222";
}


- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 50;
}

/*
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return _array.count;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger numRow = [[_array objectAtIndex:section] count];
    return numRow;
}
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pressRight:(UIButton *) btn
{
    btn.selected = !btn.selected;
    if (!btn.selected) {
       [btn setImage:[UIImage imageNamed:@"签到图"] forState:UIControlStateNormal];
    }else{
       [btn setImage:nil forState:UIControlStateNormal];
    }
}
- (IBAction)pressAlert:(UIButton *)sender {
    //显示弹出框列表选择
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Title"
                                                                   message:@"This is an Sheet."
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * action) {
                                                             //响应事件
                                                             NSLog(@"action = %@", action);
                                                         }];
    UIAlertAction* deleteAction = [UIAlertAction actionWithTitle:@"确定退出" style:UIAlertActionStyleDestructive
                                                         handler:^(UIAlertAction * action) {
                                                             //响应事件
                                                             NSLog(@"action = %@", action);
                                                         }];
    UIAlertAction* saveAction = [UIAlertAction actionWithTitle:@"关闭" style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * action) {
                                                           //响应事件
                                                           NSLog(@"action = %@", action);
                                                       }];
    [alert addAction:saveAction];
    [alert addAction:cancelAction];
    [alert addAction:deleteAction];
    [self presentViewController:alert animated:YES completion:nil];
}








- (IBAction)showAlert:(UIButton *)sender {
        
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"注册" message:@"表面注册了解一下" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* yes = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDefault handler:nil];
        
        UIAlertAction* no = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDestructive handler:nil];
        
        //    UIAlertAction* no1 = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDestructive handler:nil];
        
        [alert addAction:yes];
        
        [alert addAction:no];
        
        [self presentViewController:alert animated:YES completion:nil];
    }


    -(void)touchBtn:(UIButton*)button
    {
        //NSLog(@"%s",__FUNCTION__);
        //设置button的Normal属性  和 selected属性后，通过下面简单非语句切换两种状态
        button.selected = !button.selected;
        
        if(button.selected){
            [button setImage:nil forState:UIControlStateNormal];
        }else{
            [button setImage:[UIImage imageNamed:@"金币.png"] forState:UIControlStateNormal];
        }
        
        //button.imageView.image = nil;
        
    }


    
/*
    //尾部设定
    - (CGFloat)tableView:(UITableView *)tableView heightForRooterInSection:(NSInteger)section
    {
        return 200;
    }

    //- (NSString *):(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    //    return ;
    //}

    //并不知道什么意思的函数
    - (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
        UIView * test = [UIView new];
        test.backgroundColor = [UIColor purpleColor];
        return test;
    }
    

*/
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
