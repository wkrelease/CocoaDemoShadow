//
//  FirstCollectionViewCell.m
//  CocoaDemo
//
//  Created by king on 2016/10/11.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "FirstCollectionViewCell.h"

@interface FirstCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *goodImage;

@end

@implementation FirstCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];

    _goodImage.layer.borderWidth = 3;
    _goodImage.layer.borderColor = [UIColor whiteColor].CGColor;
    _goodImage.layer.cornerRadius = 3;
    _goodImage.layer.masksToBounds = YES;

}

@end
