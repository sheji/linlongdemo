//
//  NSString+PinYin.m
//  treasure
//
//  Created by 杜林隆 on 16/4/25.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import "NSString+PinYin.h"

@implementation NSString (PinYin)

//汉字的拼音
- (NSString *)pinyin{
    NSMutableString *str = [self mutableCopy];
    CFStringTransform(( CFMutableStringRef)str, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef)str, NULL, kCFStringTransformStripDiacritics, NO);
    
    return [str stringByReplacingOccurrencesOfString:@" " withString:@""];
}


@end
