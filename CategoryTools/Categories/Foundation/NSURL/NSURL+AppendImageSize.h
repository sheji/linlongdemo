//
//  NSURL+AppendImageSize.h
//  treasure
//
//  Created by 杜林隆 on 16/5/20.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (AppendImageSize)

+ (NSURL *)imageUrlString:(NSString *)imageUrlStr appendSizeWidth:(CGFloat )imageWidth;

@end
