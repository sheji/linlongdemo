//
//  NSString+IDFA.m
//  treasure
//
//  Created by 杜林隆 on 16/6/27.
//  Copyright © 2016年 尔邦. All rights reserved.
//

#import "NSString+IDFA.h"
#import <AdSupport/AdSupport.h>
@implementation NSString (IDFA)

+(NSString *)idfa{
    NSString *idfa = [ASIdentifierManager sharedManager].advertisingIdentifier.UUIDString;
    return idfa;
}

@end
