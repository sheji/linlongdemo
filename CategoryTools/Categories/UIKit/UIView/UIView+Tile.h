//
//  UIView+Tile.h
//  treasure
//
//  Created by 杜林隆 on 16/6/21.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Tile)


/**
 *
 *
 *  @param subViewArray   子控件数组
 *  @param numInline      每行多少个子控件
 *  @param lineSpacing    行间距
 *  @param marginDistance 边界距离
 */
- (void)tileWithSubViewArray:(NSArray *)subViewArray numInLine:(NSUInteger)numInline lineSpacing:(CGFloat)lineSpacing marginDistance:(CGFloat)marginDistance;

@end
