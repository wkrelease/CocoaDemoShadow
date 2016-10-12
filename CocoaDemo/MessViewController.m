//
//  MessViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/8/29.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "MessViewController.h"

@interface MessViewController ()

@end

@implementation MessViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
 
    [super viewDidLoad];

    
    self.view.backgroundColor = [UIColor grayColor];
    
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
//    label.backgroundColor = [UIColor darkGrayColor];
//    label.numberOfLines = 0;
//    [self.view addSubview:label];
//    
//    NSMutableAttributedString *string = [[NSMutableAttributedString alloc]initWithString:@"the name is kc asd asd as d sfg d f w qer asd fg gdfs sdfas dasdasd asdghgfdsa asdfwer fghgfwdas dsdasd"];
//    
//    [string addAttribute:NSKernAttributeName value:[NSNumber numberWithInt:20] range:NSMakeRange(0, string.length)];
//    
//    label.attributedText = string;
//    
//    [label sizeToFit];
//    
//    
//    NSLog(@"---- %f",label.frame.size.height);

    
    
    NSString *text = @"0内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容1";
    
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:12]};
    
    CGFloat height = [text boundingRectWithSize:CGSizeMake(200, 0) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine attributes:attribute context:nil].size.height;
    
    NSLog(@"%f",height);
    
    
    
    NSMutableAttributedString *messStr = [[NSMutableAttributedString alloc]initWithString:text attributes:attribute];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, height)];
    label.backgroundColor = [UIColor darkGrayColor];
    label.numberOfLines = 0;
    label.attributedText = messStr;
    [self.view addSubview:label];
    
}

@end
