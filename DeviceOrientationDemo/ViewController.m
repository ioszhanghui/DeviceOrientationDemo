//
//  ViewController.m
//  DeviceOrientationDemo
//
//  Created by 小飞鸟 on 2017/7/16.
//  Copyright © 2017年 小飞鸟. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "SupportedInterfaceOrientations.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView * View =[[UIView alloc]initWithFrame:CGRectMake(10, 100, 300, 50)];
    View.backgroundColor=[UIColor redColor];
    [self.view addSubview:View];
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [super touchesBegan:touches withEvent:event];
    
    SecondViewController * VC =[[SecondViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];

}


-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];
    [SupportedInterfaceOrientations sharedInstance].orientationMask = UIInterfaceOrientationMaskPortrait;
    
    NSNumber *orientationValue = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];
    [[UIDevice currentDevice] setValue:orientationValue forKey:@"orientation"];

}


@end
