//
//  FirstViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/8/29.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstCollectionViewCell.h"
#import "FirstLayout.h"

@interface FirstViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property(strong,nonatomic)NSMutableArray *dataArray;

@end

@implementation FirstViewController

static NSString * const cellID = @"cellID";

-(NSMutableArray *)dataArray {
    
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc]init];
    }
    return _dataArray;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    NSLog(@"=================4");

    
    dispatch_sync(dispatch_get_global_queue(0, 0), ^{
       
        while (1) {
            NSLog(@"5.5");
        }
        
    });
    
    
    NSLog(@"=================6");
    
    [self createFirst];

}

- (void)createFirst {
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    FirstLayout *collectionLayout = [[FirstLayout alloc]init];
    
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200) collectionViewLayout:collectionLayout];
    collectionView.backgroundColor = [UIColor cyanColor];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [collectionView registerNib:[UINib nibWithNibName:@"FirstCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:cellID];
    [self.view addSubview:collectionView];
    
}

#pragma mark - UICollectionViewDelegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 20;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FirstCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    return cell;
    
}

@end
