//
//  NSURL+AppendImageSize.m
//  treasure
//
//  Created by 杜林隆 on 16/5/20.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import "NSURL+AppendImageSize.h"

@implementation NSURL (AppendImageSize)


+ (NSURL *)imageUrlString:(NSString *)imageUrlStr appendSizeWidth:(CGFloat )imageWidth{
    int multipleScale = (int)[UIScreen mainScreen].scale;
    NSString *imageUrlAppendStr = [imageUrlStr stringByAppendingString:[NSString stringWithFormat:@"@%@w_%dx.png",@(imageWidth),multipleScale]];
    return [NSURL URLWithString:imageUrlAppendStr];
}

@end
