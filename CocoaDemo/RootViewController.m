//
//  RootViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/8/29.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "RootViewController.h"
#import "MessViewController.h"

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
    
    MessViewController *mess = [[MessViewController alloc]init];
    [self.navigationController pushViewController:mess animated:YES];
    
}

@end
