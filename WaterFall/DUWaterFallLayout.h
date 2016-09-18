//
//  DUWaterFallLayout.h
//  linlongdemo
//
//  Created by dulinlong on 16/9/18.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DUWaterFallLayout;
// 代理协议
@protocol DUWaterFallLayoutDelegate <NSObject>
// 必须实现
@required
- (CGFloat)waterflowLayout:(DUWaterFallLayout *)waterflowLayout heightForItemAtIndex:(NSUInteger)index itemWidth:(CGFloat)itemWidth;
// 可选实现
@optional
- (CGFloat)columnCountInWaterflowLayout:(DUWaterFallLayout *)waterflowLayout;
- (CGFloat)columnMarginInWaterflowLayout:(DUWaterFallLayout *)waterflowLayout;
- (CGFloat)rowMarginInWaterflowLayout:(DUWaterFallLayout *)waterflowLayout;
- (UIEdgeInsets)edgeInsetsInWaterflowLayout:(DUWaterFallLayout *)waterflowLayout;
@end

@interface DUWaterFallLayout : UICollectionViewLayout
/** 代理 */
@property (nonatomic, weak) id<DUWaterFallLayoutDelegate> delegate;

@end
