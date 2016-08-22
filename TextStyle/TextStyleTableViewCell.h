//
//  TextStyleTableViewCell.h
//  linlongdemo
//
//  Created by 杜林隆 on 16/3/24.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const TextStyleTableViewCellIdentifier;

@interface TextStyleTableViewCell : UITableViewCell

+(instancetype)cellWithTableView:(UITableView *)tableVeiw forIndexPath:(NSIndexPath *)indexPath;

- (void)configInfo:(NSString *)info;
@end
