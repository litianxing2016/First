//
//  AppDelegate.m
//  UIWangYi
//
//  Created by LiTianYang on 2017/7/20.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //vc1
    ViewController1 *vc1 = [[ViewController1 alloc] init];
    UINavigationController *vc1Nav = [[UINavigationController alloc] initWithRootViewController:vc1];
    vc1Nav.tabBarItem.title = @"发现音乐";
    vc1Nav.tabBarItem.image = [UIImage imageNamed:@"vc1"];
//    vc1Nav.tabBarItem.selectedImage = [UIImage imageNamed:@"vc1-1"];
    UIImage *image = vc1Nav.tabBarItem.selectedImage;
    vc1Nav.tabBarItem.selectedImage = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *atts1=[NSMutableDictionary dictionary];
    // 更改文字大小
    atts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    // 更改文字颜色
    atts1[NSForegroundColorAttributeName]=[UIColor lightGrayColor];
    NSMutableDictionary *selectedAtts1=[NSMutableDictionary dictionary];
    selectedAtts1[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAtts1[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [vc1Nav.tabBarItem setTitleTextAttributes:selectedAtts1 forState:UIControlStateSelected];
    
    //vc2
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    UINavigationController *vc2Nav = [[UINavigationController alloc] initWithRootViewController:vc2];
    vc2Nav.tabBarItem.title = @"我的音乐";
    vc2Nav.tabBarItem.image = [UIImage imageNamed:@"vc2"];
//    vc2Nav.tabBarItem.selectedImage = [UIImage imageNamed:@"vc2-1"];
    vc2Nav.tabBarItem.selectedImage = [vc2Nav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *atts2=[NSMutableDictionary dictionary];
    // 更改文字大小
    atts2[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    // 更改文字颜色
    atts2[NSForegroundColorAttributeName]=[UIColor lightGrayColor];
    NSMutableDictionary *selectedAtts2=[NSMutableDictionary dictionary];
    selectedAtts2[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAtts2[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [vc2Nav.tabBarItem setTitleTextAttributes:selectedAtts2 forState:UIControlStateSelected];
    
    //vc3
    ViewController3 *vc3 = [[ViewController3 alloc] init];
    UINavigationController *vc3Nav = [[UINavigationController alloc] initWithRootViewController:vc3];
    vc3Nav.tabBarItem.title = @"朋友";
    vc3Nav.tabBarItem.image = [UIImage imageNamed:@"vc3"];
//    vc3Nav.tabBarItem.selectedImage = [UIImage imageNamed:@"vc3-1"];
    vc3Nav.tabBarItem.selectedImage = [vc3Nav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *atts3=[NSMutableDictionary dictionary];
    // 更改文字大小
    atts3[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    // 更改文字颜色
    atts3[NSForegroundColorAttributeName]=[UIColor lightGrayColor];
    NSMutableDictionary *selectedAtts3=[NSMutableDictionary dictionary];
    selectedAtts3[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAtts3[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [vc3Nav.tabBarItem setTitleTextAttributes:selectedAtts3 forState:UIControlStateSelected];

    
    //vc4
    ViewController4 *vc4 = [[ViewController4 alloc] init];
    UINavigationController *vc4Nav = [[UINavigationController alloc] initWithRootViewController:vc4];
    vc4Nav.tabBarItem.title = @"帐号";
    vc4Nav.tabBarItem.image = [UIImage imageNamed:@"vc4"];
//    vc4Nav.tabBarItem.selectedImage = [UIImage imageNamed:@"vc4-1"];
    vc4Nav.tabBarItem.selectedImage = [vc4Nav.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *atts4=[NSMutableDictionary dictionary];
    // 更改文字大小
    atts4[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    // 更改文字颜色
    atts4[NSForegroundColorAttributeName]=[UIColor lightGrayColor];
    NSMutableDictionary *selectedAtts4=[NSMutableDictionary dictionary];
    selectedAtts4[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAtts4[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [vc4Nav.tabBarItem setTitleTextAttributes:selectedAtts4 forState:UIControlStateSelected];
    
//    vc3Nav.tabBarItem.badgeValue = @"";
//    [vc4Nav.tabBar showBadgeOnItemIndex:2];
    
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    tabbar.viewControllers = [NSArray arrayWithObjects: vc1Nav,vc2Nav,vc3Nav,vc4Nav, nil];
    self.window.rootViewController = tabbar;
    
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor redColor]];
    [[UINavigationBar appearance] setTranslucent:NO];
    [[UITabBar appearance] setBarTintColor:[UIColor blackColor]];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
