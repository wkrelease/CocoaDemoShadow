//
//  MessViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/8/29.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "MessViewController.h"
#import "GoodsView.h"

@interface MessViewController ()

@end

@implementation MessViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
 
    [super viewDidLoad];

    
    self.view.backgroundColor = [UIColor grayColor];
    
    GoodsView *good = [GoodsView shareView];
    good.backgroundColor = [UIColor blackColor];
    [self.view addSubview:good];
    
}

@end
