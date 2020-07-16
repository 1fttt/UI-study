//
//  SceneDelegate.m
//  分栏控制器基础
//
//  Created by 房彤 on 2020/7/15.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SceneDelegate.h"
#import "VCFirst.h"
#import "VCsecond.h"
#import "VCthird.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    
    _window = [[UIWindow alloc] initWithWindowScene:scene];
    
    
    //显示window
    [_window makeKeyAndVisible];
    
    VCFirst *vcFirst = [[VCFirst alloc] init];
    VCsecond *vcSecond = [[VCsecond alloc] init];
    VCthird *vcThird = [[VCthird alloc] init];

    vcFirst.title = @"消息";
    vcSecond.title = @"联系人";
    vcThird.title = @"动态";
    
    vcFirst.view.backgroundColor = [UIColor whiteColor];
    vcSecond.view.backgroundColor = [UIColor whiteColor];
    vcThird.view.backgroundColor = [UIColor whiteColor];
    
    //创建分栏控制器
    UITabBarController *tbController = [[UITabBarController alloc] init];
    
    //创建控制器数组对象
    //将所有要被分栏控制器要管理的对象添加到数组中
    NSArray *arrayVC = [NSArray arrayWithObjects:vcFirst, vcSecond, vcThird,  nil];
    
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图控制器
    self.window.rootViewController = tbController;
    
    //设置选中的视图控制器的索引
    //通过索引确定显示哪一个控制器
    tbController.selectedIndex = 1;
    
    if(tbController.selectedViewController == vcThird) {
        NSLog(@"当前显示是3");
    }
    
    //设置分栏控制器的工具栏的透明度。 不透明：NO
    tbController.tabBar.translucent = NO;
    
    
    
    
    
    
    
    
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
