//
//  UITextField+Factory.m
//  treasure
//
//  Created by 杜林隆 on 16/4/18.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import "UITextField+Factory.h"

@implementation UITextField (Factory)

+ (instancetype)textFieldWithTitleFont:(CGFloat)font titleColor:(UIColor *)color keyboardType:(UIKeyboardType)keyboardType{
    UITextField *textField = [[UITextField alloc] init];
    [textField setTitleFont:font titleColor:color keyboardType:keyboardType];
    return textField;
}

- (void)setTitleFont:(CGFloat)font titleColor:(UIColor *)color keyboardType:(UIKeyboardType)keyboardType{
    self.font = [UIFont systemFontOfSize:font];
    self.textColor = color;
    self.keyboardType = keyboardType;
}
@end
