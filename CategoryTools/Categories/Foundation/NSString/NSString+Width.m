//
//  NSString+Width.m
//  treasure
//
//  Created by 杜林隆 on 16/4/25.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import "NSString+Width.h"

@implementation NSString (Width)



/**
 *  @brief 计算文字的宽度
 *
 *  @param font   字体(默认为系统字体)
 */
- (CGFloat)widthWithSystemFont:(CGFloat )font
{
    UIFont *textFont = [UIFont systemFontOfSize:font];
    
    CGSize textSize;
    
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.lineBreakMode = NSLineBreakByWordWrapping;
        NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                     NSParagraphStyleAttributeName: paragraph};
        textSize = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)
                                      options:(NSStringDrawingUsesLineFragmentOrigin |
                                               NSStringDrawingTruncatesLastVisibleLine)
                                   attributes:attributes
                                      context:nil].size;
    } else {
        textSize = [self sizeWithFont:textFont
                    constrainedToSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)
                        lineBreakMode:NSLineBreakByWordWrapping];
    }

    return ceil(textSize.width);
}
@end
