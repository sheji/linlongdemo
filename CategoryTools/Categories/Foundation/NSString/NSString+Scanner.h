//
//  NSString+Scanner.h
//  treasure
//
//  Created by 杜林隆 on 16/6/23.
//  Copyright © 2016年 尔邦. All rights reserved.
//
//扫描出字符串中的第一个遇到的数字

#import <Foundation/Foundation.h>

@interface NSString (Scanner)

- (CGFloat)scannerFloat;

- (int)scannerInt;

- (NSInteger)scannerInteger;

@end
