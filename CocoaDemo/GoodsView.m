//
//  GoodsView.m
//  CocoaDemo
//
//  Created by Talkmate on 16/8/30.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "GoodsView.h"

@implementation GoodsView

+ (instancetype)shareView{
    
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self.class) owner:nil options:nil]lastObject];
    
}

@end
