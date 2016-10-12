//
//  CViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/9/3.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//


/*
 
 CABasicAnimation
 
 */

#import "CViewController.h"

@interface CViewController () {

    UIView *CView;
}

@end

@implementation CViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self basic];
    
}

- (void)basic {
    
    self.view.backgroundColor = [UIColor grayColor];
    
    CView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    CView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:CView];

    // A
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    scaleAnimation.toValue = [NSNumber numberWithFloat:1.5];
    scaleAnimation.autoreverses = YES;
    scaleAnimation.fillMode = kCAFillModeForwards;
    scaleAnimation.repeatCount = MAXFLOAT;
    scaleAnimation.duration = 1;
    

    //B
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    moveAnimation.fromValue = [NSValue valueWithCGPoint:CView.layer.position];
    moveAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(300, 300)];
    moveAnimation.autoreverses = YES;
    moveAnimation.fillMode = kCAFillModeForwards;
    moveAnimation.repeatCount = MAXFLOAT;
    moveAnimation.duration = 1;
    
    
    //C
    CABasicAnimation *radiusAnimation = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    radiusAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    radiusAnimation.toValue = [NSNumber numberWithFloat:50];
    radiusAnimation.autoreverses = YES;
    radiusAnimation.fillMode = kCAFillModeForwards;
    radiusAnimation.repeatCount = MAXFLOAT;
    radiusAnimation.duration = 1;
    
    
    //D
    CABasicAnimation *contentAnimation = [CABasicAnimation animationWithKeyPath:@"contents"];
    contentAnimation.fromValue = (id)[UIImage imageNamed:@"dropdown_anim__0001"].CGImage;
    contentAnimation.toValue = (id)[UIImage imageNamed:@"dropdown_anim__00010"].CGImage;
    contentAnimation.autoreverses = YES;
    contentAnimation.fillMode = kCAFillModeForwards;
    contentAnimation.repeatCount = MAXFLOAT;
    contentAnimation.duration = 1;
    
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.duration = 4;
    group.animations = @[scaleAnimation,moveAnimation,radiusAnimation,contentAnimation];
    group.removedOnCompletion = NO;
    
    
    [CView.layer addAnimation:group forKey:@"scaleAnimation"];
    
}

@end
