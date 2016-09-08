//
//  DViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/9/3.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

/*
 
 CAKeyframeAnimation
 
 */

#import "DViewController.h"

@interface DViewController () {

    UIView *Dview;

}

@end

@implementation DViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self createkey];
    
}

- (void)createkey {
    
    self.view.backgroundColor = [UIColor grayColor];
    
    Dview = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    Dview.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:Dview];
    

    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    
    animation.keyPath = @"position";
    
    NSValue *value1=[NSValue valueWithCGPoint:CGPointMake(100, 100)];
    
    NSValue *value2=[NSValue valueWithCGPoint:CGPointMake(200, 100)];
    
    NSValue *value3=[NSValue valueWithCGPoint:CGPointMake(200, 200)];
    
    NSValue *value4=[NSValue valueWithCGPoint:CGPointMake(100, 200)];
    
    NSValue *value5=[NSValue valueWithCGPoint:CGPointMake(100, 100)];
    
    animation.values=@[value1,value2,value3,value4,value5];
    
    animation.repeatCount=MAXFLOAT;
    
    animation.removedOnCompletion = NO;
    
    animation.fillMode = kCAFillModeForwards;
    
    animation.duration = 4.0f;
    
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    animation.delegate=self;
    
    [Dview.layer addAnimation:animation forKey:nil];
    
    
}

@end
