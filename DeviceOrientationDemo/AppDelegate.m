//
//  AppDelegate.m
//  DeviceOrientationDemo
//
//  Created by 小飞鸟 on 2017/7/16.
//  Copyright © 2017年 小飞鸟. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "BaseNavigationController.h"
#import "SupportedInterfaceOrientations.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ViewController * VC =[[ViewController alloc]init];
    BaseNavigationController * Nvi=[[BaseNavigationController alloc]initWithRootViewController:VC];
    self.window.rootViewController=Nvi;
    
    
    return YES;
}


- (UIInterfaceOrientationMask)application:(UIApplication *)application
  supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return [SupportedInterfaceOrientations sharedInstance].orientationMask;
}
@end
