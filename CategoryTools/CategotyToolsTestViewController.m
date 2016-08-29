//
//  CategotyToolsTestViewController.m
//  linlongdemo
//
//  Created by 杜林隆 on 16/8/26.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import "CategotyToolsTestViewController.h"

@interface CategotyToolsTestViewController ()

@end

@implementation CategotyToolsTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = [NSArray array];
    NSLog(@"%@",[array objectAtIndex:2]);
    
    NSMutableArray *mArray = array.mutableCopy;
    NSLog(@"%@",[mArray objectAtIndex:2]);
    [mArray addObject:nil];
    [mArray removeObjectAtIndex:0];
    [mArray firstObject];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
