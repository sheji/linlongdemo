//
//  MainController.m
//  linlongdemo
//
//  Created by 杜林隆 on 16/3/4.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import "MainController.h"
#import "MainModel.h"


@interface MainController ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView     *_tableView;
    NSArray         *_dataArray;
}

@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"案例列表";
    self.view.backgroundColor = [UIColor grayColor];
    
    NSArray *dataArray = @[
                           @{    @"vcClassName":@"WiFiMainController",
                                 @"navTitle":@"Wifi",
                                 @"dec":@"9.0的开放的wifi列表热点连接"
                            },
                           @{    @"vcClassName":@"TextStyleViewController",
                                 @"navTitle":@"系统字体样式",
                                 @"dec":@"系统字体样式"
                            },
                           @{    @"vcClassName":@"HeapViewController",
                                 @"navTitle":@"NSMutableArray在内存",
                                 @"dec":@"NSMutableArray删除操作内存的变化"
                            },
                           @{    @"vcClassName":@"NSStringCopyTestViewController",
                                 @"navTitle":@"类中NSString的copy分析",
                                 @"dec":@"类中NSString的copy分析"
                                 },
                       
                          ];
    _dataArray = [MainModel mj_objectArrayWithKeyValuesArray:dataArray];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 44.0;

    [self.view addSubview:tableView];
     _tableView = tableView;
    [_tableView reloadData];

}

#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
      return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    MainModel *model = _dataArray [indexPath.row];
    cell.textLabel.text = model.dec;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MainModel *info = _dataArray[indexPath.row];
    Class VcClassName = NSClassFromString(info.vcClassName);
    UIViewController *vc = [[VcClassName alloc] init];
    vc.view.backgroundColor = [UIColor orangeColor];
    vc.title = info.navTitle;
    [self.navigationController pushViewController:vc animated:YES];
}


@end
