//
//  AppDelegate.m
//  SHStartPageViewDemo
//
//  Created by CoderSun on 2017/3/28.
//  Copyright © 2017年 Mobby. All rights reserved.
//

#import "AppDelegate.h"
#import "SHStartPageView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    // 判断第一次进入
//    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"firstLaunch"]) {
    
        NSLog(@"第一次进入");
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstLaunch"];
        
        // 根据图片数组创建启动图
//        NSArray *imageArray = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];
//        SHStartPageView *shStartPageView = [[SHStartPageView alloc] initWithImageArray:imageArray enterButtonIsHidden:NO];
    
        
        // 根据视频名称和类型创建启动图
        SHStartPageView *shStartPageView = [[SHStartPageView alloc] initWithVideoName:@"1" videoType:@"mp4" enterButtonIsHidden:NO];
        
        [self.window.rootViewController.view addSubview:shStartPageView];
        
//    }
    
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
