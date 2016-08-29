//
//  UIButton+Factory.h
//  treasure
//
//  Created by 杜林隆 on 16/3/17.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Factory)

+ (UIButton *)buttonWithTitleFont:(float)font titleColor:(UIColor *)color title:(NSString *)title;
+ (UIButton *)buttonWithTitleFont:(float)font titleColor:(UIColor *)color title:(NSString *)title controlState:(UIControlState) UIControlState;


- (void)setTitleFont:(float)font titleColor:(UIColor *)color title:(NSString *)title;
- (void)setTitleFont:(float)font titleColor:(UIColor *)color title:(NSString *)title controlState:(UIControlState) UIControlState;



+ (UIButton *)buttonWithBackgroundNormalImageName:(NSString *)normalImageName highlightedImageName:(NSString *)highlightedImageName
                            selectedImageName:(NSString *)selectImageName DisableImageName:(NSString *)disableImageName;

- (void)setBackgroundNormalImageName:(NSString *)normalImageName highlightedImageName:(NSString *)highlightedImageName
                                selectedImageName:(NSString *)selectImageName DisableImageName:(NSString *)disableImageName;


+ (UIButton *)buttonWithNormalImageName:(NSString *)normalImageName highlightedImageName:(NSString *)highlightedImageName
                                selectedImageName:(NSString *)selectImageName DisableImageName:(NSString *)disableImageName;

- (void)setNormalImageName:(NSString *)normalImageName highlightedImageName:(NSString *)highlightedImageName
                   selectedImageName:(NSString *)selectImageName DisableImageName:(NSString *)disableImageName;

+ (UIButton *)buttonWithBackgroundColorNormalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor
                      selectedColor:(UIColor *)selectColor DisableColor:(UIColor *)disableColor;

- (void)setBackgroundColorWithNormalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor
                            selectedColor:(UIColor *)selectColor DisableColor:(UIColor *)disableColor;


@end
