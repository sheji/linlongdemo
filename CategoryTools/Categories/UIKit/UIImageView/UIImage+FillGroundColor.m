//
//  UIImage+FillGroundColor.m
//  treasure
//
//  Created by 杜林隆 on 16/7/12.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import "UIImage+FillGroundColor.h"
#import "UIImage+Color.h"

@implementation UIImage (FillGroundColor)


- (UIImage *)fillGroundColor:(UIColor *)color inSize:(CGSize)size{
    
    UIImage * backgroundImage = [UIImage imageWithColor:color];
    
    UIGraphicsBeginImageContext(size);
    
    [backgroundImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    CGFloat x = (size.width - self.size.width)/2.0;
    CGFloat y = (size.height - self.size.height)/2.0;
    
    [self drawInRect:CGRectMake(x,y, self.size.width, self.size.height)];
    
    UIImage *resultingImage =UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return resultingImage;
}

@end
