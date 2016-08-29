//
//  UIButton+UnderLine.m
//  WiFiDianDian
//
//  Created by 杜林隆 on 10/29/15.
//  Copyright © 2015 dulinlong. All rights reserved.
//

#import "UIButton+UnderLine.h"
#import "UIColor+HEX.h"

@interface UIButton()

@end

@implementation UIButton (UnderLine)

- (void)addUnderLine{
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:self.titleLabel.text];
    NSRange strRange = {0,[str length]};
    [str addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:strRange];
    [self setAttributedTitle:str forState:UIControlStateNormal];
}


@end
