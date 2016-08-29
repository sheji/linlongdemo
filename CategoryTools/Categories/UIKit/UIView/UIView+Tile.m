//
//  UIView+Tile.m
//  treasure
//
//  Created by 杜林隆 on 16/6/21.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import "UIView+Tile.h"
#import "Masonry.h"


@implementation UIView (Tile)


- (void)tileWithSubViewArray:(NSArray *)subViewArray numInLine:(NSUInteger)numInline lineSpacing:(CGFloat)lineSpacing marginDistance:(CGFloat)marginDistance{


    NSMutableArray *separateViewArray = [NSMutableArray arrayWithCapacity:numInline - 1];
    
    for (int i = 0; i< numInline - 1; i++) {
        UIView *separateView =  [[UIView alloc] init];
        [separateViewArray addObject:separateView];
        [self addSubview:separateView];
    }
    
    UIView *separateView0 = [separateViewArray objectAtIndex:0];
    [separateViewArray enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (idx != 0) {
            [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(separateView0);
            }];
        }
    }];
    
    
    UIView *view0 = [subViewArray objectAtIndex:0];
    
    WS(weakSelf);
    for (int idx = 0; idx < subViewArray.count; idx ++) {
        
        UIView *obj = [subViewArray objectAtIndex:idx];
        
        UIView *rightSeparateView = nil;
        UIView *leftSeparateView = nil;
        if (idx < numInline) {//第一排间隔View
            rightSeparateView = [separateViewArray objectAtIndex:idx];//屁股后面的分割
            leftSeparateView = [separateViewArray objectAtIndex:idx - 1];//前面的分割
            
            if (rightSeparateView != nil) {
                [rightSeparateView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.left.equalTo(obj.mas_right);
                }];
            }
            
            if (leftSeparateView != nil) {
                [leftSeparateView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.right.equalTo(obj.mas_left);
                }];
            }
            
        }
        
        
        if (idx != 0) {
            [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.equalTo(view0);
            }];
        }
        
        
        if (idx == 0) {//第一排第一个
            [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.equalTo(weakSelf).with.offset(marginDistance);
            }];
            
        }
        
        if (idx == numInline - 1) {//第一排最后一个
            [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                make.trailing.equalTo(weakSelf).with.offset(-marginDistance);
            }];
        }
        
        //第一排
        if(idx >0 && idx <= numInline -1){
            [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(view0);
            }];
        }
        
        //第二三。。排   
        if (idx > numInline - 1) {
            UIView *headerView = [subViewArray objectAtIndex:idx - numInline];
            [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.equalTo(headerView);
                make.top.equalTo(headerView.mas_bottom).with.offset(lineSpacing);
            }];
        }
        
    }
}
@end
