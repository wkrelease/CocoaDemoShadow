//
//  UIView+Animation.m
//  CocoaDemo
//
//  Created by Talkmate on 16/9/8.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "UIView+Animation.h"

@implementation UIView (Animation)

- (CGSize)size {
    return self.frame.size;
}
- (void)setSize:(CGSize)size {
    CGPoint origin = self.frame.origin;
    self.frame = CGRectMake(origin.x, origin.y, size.width, size.height);
}

- (CGFloat)x {
    return self.frame.origin.x;
}
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}
- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}
- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)centerX {
    return CGRectGetMidX(self.frame);
}
- (void)setCenterX:(CGFloat)centerX {
    CGRect frame = self.frame;
    frame.origin.x = centerX - frame.size.width/2;
    self.frame = frame;
}

- (CGFloat)centerY {
    return CGRectGetMidY(self.frame);
}
- (void)setCenterY:(CGFloat)centerY {
    CGRect frame = self.frame;
    frame.origin.y = centerY - frame.size.height/2;
    self.frame = frame;
}

@end
