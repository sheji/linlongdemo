//
//  NSString+Scanner.m
//  treasure
//
//  Created by 杜林隆 on 16/6/23.
//  Copyright © 2016年 尔邦. All rights reserved.
//
//扫描出字符串中的第一个遇到的数字

#import "NSString+Scanner.h"

@implementation NSString (Scanner)

- (CGFloat)scannerFloat{

    NSScanner *scanner = [NSScanner scannerWithString:self];
    [scanner scanUpToCharactersFromSet:[NSCharacterSet decimalDigitCharacterSet] intoString:nil];
    float number;
    [scanner scanFloat:&number];
    return number;
}


- (int)scannerInt{
    NSScanner *scanner = [NSScanner scannerWithString:self];
    [scanner scanUpToCharactersFromSet:[NSCharacterSet decimalDigitCharacterSet] intoString:nil];
    int number;
    [scanner scanInt:&number];
    return number;
}

- (NSInteger)scannerInteger{
    NSScanner *scanner = [NSScanner scannerWithString:self];
    [scanner scanUpToCharactersFromSet:[NSCharacterSet decimalDigitCharacterSet] intoString:nil];
    NSInteger number;
    [scanner scanInteger:&number];
    return number;
}

@end
