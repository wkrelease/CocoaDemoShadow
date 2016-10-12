//
//  RootViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/8/29.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "RootViewController.h"
#import "MessViewController.h"
#import "FirstViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
 
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self createRoot];

}

- (void)createRoot {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"push" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor =  [UIColor cyanColor];
    [btn addTarget:self action:@selector(btnClick)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
//    MessViewController *mess = [[MessViewController alloc]init];
//    [self.navigationController pushViewController:mess animated:YES];
    
}

- (void)btnClick {
    
    FirstViewController *first = [[FirstViewController alloc]init];
    [self.navigationController pushViewController:first animated:YES];
    
}

@end
