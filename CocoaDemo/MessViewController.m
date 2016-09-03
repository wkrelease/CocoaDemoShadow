//
//  MessViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/8/29.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

/**
 *-----KVC
 *
 *
 *
 */


#import "MessViewController.h"

@interface MessViewController ()

@end

@implementation MessViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
 
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    [self setupMess];
    
}

#pragma mark － SetUp

- (void)setupMess{
    
    //删除数组里的重复数据
    NSArray *array = @[@"name", @"w", @"aa", @"zxp", @"aa"]; //返回的是一个新的数组
    NSArray *newArray = [array valueForKeyPath:@"@distinctUnionOfObjects.self"];
    NSLog(@"%@", newArray);
    
}

@end
