//
//  NSStringCopyTestViewController.m
//  linlongdemo
//
//  Created by 杜林隆 on 16/8/13.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import "NSStringCopyTestViewController.h"
#import "Person.h"


@interface NSStringCopyTestViewController ()

@end

@implementation NSStringCopyTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *name = @"小明";
    
    Person *person = [[Person alloc] init];
    person.name = name;
    
    NSLog(@"字符串name的原始地址：%p 以及内容:%@",name,name);
    
    NSLog(@"类中name的地址：%p 以及内容:%@",person.name,person.name);
    
    name = @"小芳";
    
    
    NSLog(@"更改字符串name的地址：%p 以及内容:%@",name,name);
    
    NSLog(@"更改后类中name的地址：%p 以及内容:%@",person.name,person.name);

    
//    2016-08-13 15:23:29.152 linlongdemo[13622:3761399] 字符串name的原始地址：0x107996000 以及内容:小明
//    2016-08-13 15:23:29.153 linlongdemo[13622:3761399] 类中name的地址：0x107996000 以及内容:小明
//    2016-08-13 15:23:29.153 linlongdemo[13622:3761399] 更改字符串name的地址：0x107996060 以及内容:小芳
//    2016-08-13 15:23:29.153 linlongdemo[13622:3761399] 更改后类中name的地址：0x107996000 以及内容:小明
    
    
//
}



@end
