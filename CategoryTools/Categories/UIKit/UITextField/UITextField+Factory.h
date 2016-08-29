//
//  UITextField+Factory.h
//  treasure
//
//  Created by 杜林隆 on 16/4/18.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Factory)

+ (instancetype)textFieldWithTitleFont:(CGFloat)font titleColor:(UIColor *)color keyboardType:(UIKeyboardType)keyboardType;

- (void)setTitleFont:(CGFloat)font titleColor:(UIColor *)color keyboardType:(UIKeyboardType)keyboardType;

@end
