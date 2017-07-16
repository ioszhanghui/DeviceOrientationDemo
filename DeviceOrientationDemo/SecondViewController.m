//
//  SecondViewController.m
//  DeviceOrientationDemo
//
//  Created by 小飞鸟 on 2017/7/16.
//  Copyright © 2017年 小飞鸟. All rights reserved.
//

#import "SecondViewController.h"
#import "SupportedInterfaceOrientations.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView * View =[[UIView alloc]initWithFrame:CGRectMake(10, 100, 300, 50)];
    View.backgroundColor=[UIColor redColor];
    [self.view addSubview:View];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    //这里不是直接使用苹果的私有变量，而是利用kvo的方法 间接的调用此方法，可以上架，不会被打回
    
    
    [SupportedInterfaceOrientations sharedInstance].orientationMask = UIInterfaceOrientationMaskLandscape;
    
    NSNumber *orientationValue = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];
    [[UIDevice currentDevice] setValue:orientationValue forKey:@"orientation"];
    
//    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
//    
//    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
//    
//    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
//    
//    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
    
}
-(BOOL)prefersStatusBarHidden{


    return NO;
}


@end
