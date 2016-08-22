//
//  TextStyleViewController.m
//  linlongdemo
//
//  Created by 杜林隆 on 16/3/24.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import "TextStyleViewController.h"
#import "TextStyleTableViewCell.h"

@interface TextStyleViewController ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView         *_tableView;
    NSMutableArray      *_dataSource;
}

@end

@implementation TextStyleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataSource = [NSMutableArray array];
    for (NSString * familyName in [UIFont familyNames]) {
        NSLog(@"Font FamilyName = %@",familyName); //*输出字体族科名字
        for (NSString * fontName in [UIFont fontNamesForFamilyName:familyName]) {
               [_dataSource addObject:fontName];
            
            //查看系统是剖有该字体
//            if([fontName containsString:@"Avenir"]){
//                 NSLog(@"    %@",fontName);
//                [_dataSource addObject:fontName];
//            }
            
        }
    }
    
    _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    _tableView.rowHeight = 120.f;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:TextStyleTableViewCell.class forCellReuseIdentifier:TextStyleTableViewCellIdentifier];
    [_tableView reloadData];
  
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataSource.count ;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TextStyleTableViewCell *cell = [TextStyleTableViewCell cellWithTableView:tableView forIndexPath:indexPath];
    [cell configInfo:_dataSource[indexPath.row]];
    return cell;
}


@end
