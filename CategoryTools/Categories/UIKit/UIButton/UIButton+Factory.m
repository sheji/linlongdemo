//
//  UIButton+Factory.m
//  treasure
//
//  Created by 杜林隆 on 16/3/17.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import "UIButton+Factory.h"
#import "UIImage+Color.h"

@implementation UIButton (Factory)

+ (UIButton *)buttonWithTitleFont:(float)font titleColor:(UIColor *)color title:(NSString *)title{
    return [self buttonWithTitleFont:font titleColor:color title:title controlState:UIControlStateNormal];
}

+ (UIButton *)buttonWithTitleFont:(float)font titleColor:(UIColor *)color title:(NSString *)title controlState:(UIControlState) UIControlState{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitleFont:font titleColor:color title:title controlState:UIControlState];
    return button;
}

- (void)setTitleFont:(float)font titleColor:(UIColor *)color title:(NSString *)title{
    [self setTitleFont:font titleColor:color title:title controlState:UIControlStateNormal];
}
- (void)setTitleFont:(float)font titleColor:(UIColor *)color title:(NSString *)title controlState:(UIControlState) UIControlState{
    [self.titleLabel setFont:[UIFont systemFontOfSize:font]];
    [self setTitleColor:color forState:UIControlState];
    [self setTitle:title forState:UIControlState];
}



+ (UIButton *)buttonWithBackgroundNormalImageName:(NSString *)normalImageName highlightedImageName:(NSString *)highlightedImageName
                                selectedImageName:(NSString *)selectImageName DisableImageName:(NSString *)disableImageName{
       UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundNormalImageName:normalImageName highlightedImageName:highlightedImageName selectedImageName:selectImageName DisableImageName:disableImageName];
    return button;
}

- (void)setBackgroundNormalImageName:(NSString *)normalImageName highlightedImageName:(NSString *)highlightedImageName
                   selectedImageName:(NSString *)selectImageName DisableImageName:(NSString *)disableImageName{
    [self setBackgroundImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[UIImage imageNamed:selectImageName] forState:UIControlStateSelected];
    [self setBackgroundImage:[UIImage imageNamed:disableImageName] forState:UIControlStateDisabled];
}



+ (UIButton *)buttonWithNormalImageName:(NSString *)normalImageName highlightedImageName:(NSString *)highlightedImageName
                      selectedImageName:(NSString *)selectImageName DisableImageName:(NSString *)disableImageName{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setNormalImageName:normalImageName highlightedImageName:highlightedImageName selectedImageName:selectImageName DisableImageName:disableImageName];
    return button;
}

- (void)setNormalImageName:(NSString *)normalImageName highlightedImageName:(NSString *)highlightedImageName
         selectedImageName:(NSString *)selectImageName DisableImageName:(NSString *)disableImageName{
    [self setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    [self setImage:[UIImage imageNamed:selectImageName] forState:UIControlStateSelected];
    [self setImage:[UIImage imageNamed:disableImageName] forState:UIControlStateDisabled];
}



+ (UIButton *)buttonWithBackgroundColorNormalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor
                                     selectedColor:(UIColor *)selectColor DisableColor:(UIColor *)disableColor{
       UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundColorWithNormalColor:normalColor highlightedColor:highlightedColor selectedColor:selectColor DisableColor:disableColor];
    return button;
}

- (void)setBackgroundColorWithNormalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor
                            selectedColor:(UIColor *)selectColor DisableColor:(UIColor *)disableColor{
    if(normalColor != nil){
        [self setBackgroundImage:[UIImage imageWithColor:normalColor] forState:UIControlStateNormal];
    }
    
    if (highlightedColor != nil) {
        [self setBackgroundImage:[UIImage imageWithColor:highlightedColor] forState:UIControlStateHighlighted];
    }
    
    if (selectColor != nil) {
        [self setBackgroundImage:[UIImage imageWithColor:selectColor] forState:UIControlStateSelected];
    }
   
    if (disableColor != nil) {
         [self setBackgroundImage:[UIImage imageWithColor:disableColor] forState:UIControlStateDisabled];
    }
   
}
@end
