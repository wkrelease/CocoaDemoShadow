//
//  AViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/9/3.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//


/*
 
 UIView
 
 */

#import "AViewController.h"

@interface AViewController (){
    
    UIImageView *Aview;
    
}

@end

@implementation AViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self AnimationSimple];
    
}

#pragma mark － SetUp

- (void)AnimationSimple {
 
    self.view.backgroundColor = [UIColor whiteColor];

    Aview = [[UIImageView alloc]initWithFrame:CGRectMake(200, 100, 100, 100)];
    Aview.backgroundColor = [UIColor lightGrayColor];
    NSArray *array = [NSArray arrayWithObjects:[UIImage imageNamed:@"dropdown_loading_01"],
                                               [UIImage imageNamed:@"dropdown_loading_02"],
                                               [UIImage imageNamed:@"dropdown_loading_03"],nil];
    Aview.animationImages = array;
    Aview.animationDuration = 0.5;
    [self.view addSubview:Aview];
    
    [UIView animateWithDuration:1 delay:1 usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
     
        Aview.frame = CGRectMake(200, 400, 50, 50);
    
    } completion:^(BOOL finished) {
        
        [UIView animateKeyframesWithDuration:6 delay:1 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
           
            [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:1/3.0 animations:^{
                Aview.backgroundColor = [UIColor yellowColor];
            }];
            
            [UIView addKeyframeWithRelativeStartTime:1/3.0 relativeDuration:1/3.0 animations:^{
                Aview.backgroundColor = [UIColor cyanColor];
            }];
            
            [UIView addKeyframeWithRelativeStartTime:2/3.0 relativeDuration:1/3.0 animations:^{
                Aview.backgroundColor = [UIColor lightGrayColor];
            }];
            
        } completion:^(BOOL finished) {
            
            [UIView animateWithDuration:1 animations:^{
                
                Aview.alpha = 1;
                Aview.center = self.view.center;

            } completion:^(BOOL finished) {
               
                [UIView animateWithDuration:2 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                    
                    Aview.frame = CGRectMake(50, 100, self.view.width - 100, self.view.height - 200);
                    
                } completion:^(BOOL finished) {
                    
                    [Aview startAnimating];

                    [UIView animateWithDuration:2 animations:^{

                        Aview.frame = CGRectMake(0,0, 100, 100);
                        Aview.center = self.view.center;

                    }];
                    
                }];
                
            }];
            
        }];
        
    }];
    
}

@end
