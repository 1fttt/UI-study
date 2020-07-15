//
//  VCThird.m
//  导航栏控制器的切换
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"3";
    
    UIBarButtonItem *btnLeft = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    self.navigationItem.leftBarButtonItem = btnLeft;
    
    UIBarButtonItem *btnRight = [[UIBarButtonItem alloc] initWithTitle:@"主页" style:UIBarButtonItemStylePlain target:self action:@selector(pressRight)];
    self.navigationItem.rightBarButtonItem = btnRight;
    
}

- (void)pressRight {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)pressBack {
   // NSLog(@"1");
    [self.navigationController popViewControllerAnimated:YES];
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
