//
//  HeapViewController.m
//  linlongdemo
//
//  Created by 杜林隆 on 16/7/31.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import "HeapViewController.h"







@interface HeapViewController ()

@end

@implementation HeapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *tipLab = [[UILabel alloc] initWithFrame:self.view.bounds];
    [tipLab setText:@"主要是想看可变数组删除一个之后，可变数组在内存的变化，未研究出来"];
    tipLab.numberOfLines = 0;
    [self.view addSubview:tipLab];
    
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for (int i = 0; i < 4; i ++) {
//        NSObject *obj1 = [[NSObject alloc] init];
//        [arrayM addObject:obj1];
        [arrayM addObject:[NSString stringWithFormat:@"%@",@(i)]];
    }
    
//    for (int i = 0; i < arrayM.count; i ++) {
//        NSLog(@"原始内存 %@  :%@ 内容：%p",arrayM[i],*(&(arrayM[0])+i),arrayM[i]);
//    }
//    
//    [arrayM removeObjectAtIndex:1];
//    
//    NSLog(@"---------------");
//    
//    for (int i = 0; i < arrayM.count; i ++) {
//        NSLog(@"变化内存 %@  :%@ 内容：%p",arrayM[i],*(&arrayM[0] +i),arrayM[i]);
//    }
    
    
    
    
}



@end
