//
//  SceneDelegate.m
//  br
//
//  Created by 房彤 on 2020/7/17.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SceneDelegate.h"
#import "VCFind.h"
#import "VCVideo.h"
#import "VCMine.h"
#import "VCAccount.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    

      self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
      [self.window makeKeyAndVisible];
    
      
      VCFind *vcFind = [[VCFind alloc] init];
      vcFind.title = @"发现";
      UIImage *imageFind = [UIImage imageNamed:@"网易云音乐_自制.png"];
      UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:imageFind tag:1];
      vcFind.tabBarItem = tabBarItem;
      
      VCVideo *vcVideo = [[VCVideo alloc] init];
      vcVideo.title = @"视频";
      UIImage *imageVideo = [UIImage imageNamed:@"视频.png"];
      UITabBarItem *tabBarItem2 = [[UITabBarItem alloc] initWithTitle:@"视频" image:imageVideo tag:2];
      vcVideo.tabBarItem = tabBarItem2;
      
      VCMine *vcMine = [[VCMine alloc] init];
      vcMine.title = @"我的音乐";
      UIImage *imageMine = [UIImage imageNamed:@"音乐.png"];
      UITabBarItem *tabBarItem3 = [[UITabBarItem alloc] initWithTitle:@"我的" image:imageMine tag:3];
      vcMine.tabBarItem = tabBarItem3;
      
      VCAccount *vcAccount = [[VCAccount alloc] init];
      vcAccount.title =@"账户";
      UIImage *imageAccount = [UIImage imageNamed:@"账号.png"];
      UITabBarItem *tabBarItem4 = [[UITabBarItem alloc] initWithTitle:@"账号" image:imageAccount tag:4];
      vcAccount.tabBarItem = tabBarItem4;
      
      UITabBarController *tbController = [[UITabBarController alloc] init];
      
      UINavigationController *nController1 = [[UINavigationController alloc] initWithRootViewController:vcFind];
      nController1.navigationBar.barTintColor = [UIColor redColor];

      
      UINavigationController *nController2 = [[UINavigationController alloc] initWithRootViewController:vcVideo];
      nController2.navigationBar.barTintColor = [UIColor redColor];
      
      UINavigationController *nController3 = [[UINavigationController alloc] initWithRootViewController:vcMine];
      nController3.navigationBar.barTintColor = [UIColor redColor];
      
      UINavigationController *nController4 = [[UINavigationController alloc] initWithRootViewController:vcAccount];
      nController4.navigationBar.barTintColor = [UIColor redColor];
    
      //设置导航栏按钮
      UIBarButtonItem *item4 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"0.0"] style:UIBarButtonItemStylePlain target:self action:nil];
      UIBarButtonItem *item3 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"云"] style:UIBarButtonItemStylePlain target:self action:nil];

      vcMine.navigationItem.leftBarButtonItem = item3;
      vcAccount.navigationItem.rightBarButtonItem = item4;
      vcFind.navigationItem.rightBarButtonItem = item4;
      vcMine.navigationItem.rightBarButtonItem = item4;
      vcVideo.navigationItem.rightBarButtonItem = item4;
      vcAccount.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
      vcMine.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
      
      //设置导航栏标题颜色
      [vcAccount.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
      [vcFind.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
      [vcVideo.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
      [vcMine.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
      
      //设置根视图
      NSArray *arrayVC = [NSArray arrayWithObjects:nController1,nController2,nController3,nController4,nil];

      tbController.viewControllers = arrayVC;
      
      self.window.rootViewController = tbController;
      
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
