//
//  FirstLayout.m
//  CocoaDemo
//
//  Created by king on 2016/10/11.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "FirstLayout.h"

static const CGFloat itemSize = 100;

@implementation FirstLayout

/**
 * 一些初始化操作
 */
-(void)prepareLayout {
    
    [super prepareLayout];
    
    //初始化
    self.itemSize = CGSizeMake(itemSize, itemSize);
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    CGFloat inset = (self.collectionView.frame.size.width - itemSize) * 0.5;
    
    self.sectionInset = UIEdgeInsetsMake(0, inset, 0, inset);

    self.minimumLineSpacing = 50;


}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds{
    
    return YES;
    
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    
    NSArray *array = [super layoutAttributesForElementsInRect:rect];
    
    CGFloat centerX = self.collectionView.contentOffset.x + self.collectionView.frame.size.width/2;
    
    for (UICollectionViewLayoutAttributes *attributes in array) {
        
        CGFloat itemCenterX = attributes.center.x;
        
        ABS(itemCenterX - centerX);
        
        attributes.transform3D = CATransform3DMakeScale(1.1, 1.1, 1.0);
    }
    
    return array;
    
}

@end
