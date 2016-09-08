//
//  BViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/9/3.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//


/*
 
 CATransition
 
 */

#import "BViewController.h"

@interface BViewController () {
    
    CATransition *transition;
    UIView *Bview;
    
}

@end

@implementation BViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self createTransition];
    
}

- (void)createTransition{
    
    self.view.backgroundColor = [UIColor blackColor];
    
    transition = [CATransition animation];
    transition.type = @"oglFlip";
    transition.subtype = kCATransitionFromTop;
    transition.duration = 0.5;
    
    Bview = [[UIView alloc]initWithFrame:CGRectMake(200, 100, 100, 100)];
    Bview.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:Bview];
    
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(startAnimation) userInfo:nil repeats:YES];
    
}

- (void)startAnimation {
    
    NSArray *array = @[kCATransitionFromTop,kCATransitionFromBottom,kCATransitionFromLeft,kCATransitionFromRight];
    transition.subtype = array[arc4random()%4];
    [Bview.layer addAnimation:transition forKey:nil];
    
}



@end
