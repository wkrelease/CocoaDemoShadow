//
//  RootViewController.m
//  CocoaDemo
//
//  Created by Talkmate on 16/8/29.
//  Copyright © 2016年 CocoaKC. All rights reserved.
//

#import "RootViewController.h"

typedef NS_OPTIONS(NSUInteger, MyOption){
    
    MyOptionNone = 0,
    MyOption1 = 1 << 0, // 1
    MyOption2 = 1 << 1, // 2
    MyOption3 = 1 << 2, // 4
    MyOption4 = 1 << 3, // 8
    MyOption5 = 1 << 4, // 16
    
};


@interface RootViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong ,nonatomic) UITableView *tableView;
@property (strong ,nonatomic) NSArray *dataArray;

@end

@implementation RootViewController

- (void)de{

    NSError *error = nil;
    
}


#pragma mark - LifeCycle

- (void)viewDidLoad {
 
    MyOption option = MyOption1 | MyOption2;

    NSLog(@"%lu",(unsigned long)option);
    
    if (option & MyOption1) {
        NSLog(@"1");
    }else{
        NSLog(@"0");
    }
    
    option = option | MyOption3;
    
    NSLog(@"%lu",option);

    option = option & (~MyOption3);
    
    NSLog(@"%lu",option);
    
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    _dataArray = @[@"MessViewController",@"AViewController",@"BViewController",@"CViewController",@"DViewController"];
    
}

#pragma mark - UITableViewDelegate && UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    cell.accessoryType = 1;
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self pushAnimationView:indexPath.row];
    
}

- (void)pushAnimationView:(NSInteger)index{
    
    Class class = NSClassFromString(_dataArray[index]);
    UIViewController *controller = [[class alloc]init];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
