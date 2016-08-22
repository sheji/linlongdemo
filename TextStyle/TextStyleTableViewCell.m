//
//  TextStyleTableViewCell.m
//  linlongdemo
//
//  Created by 杜林隆 on 16/3/24.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import "TextStyleTableViewCell.h"

NSString *const TextStyleTableViewCellIdentifier = @"TextStyleTableViewCell";

@interface TextStyleTableViewCell(){
    UILabel     *_fontNameLab;
    UILabel     *_showStyleLab;
}

@end


@implementation TextStyleTableViewCell

+(instancetype)cellWithTableView:(UITableView *)tableVeiw forIndexPath:(NSIndexPath *)indexPath{
    TextStyleTableViewCell *cell  = [tableVeiw dequeueReusableCellWithIdentifier:TextStyleTableViewCellIdentifier forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _fontNameLab = [[UILabel alloc] init];
        [self.contentView addSubview:_fontNameLab];
        
        _showStyleLab = [[UILabel alloc] init];
        [self.contentView addSubview:_showStyleLab];
        
        [_fontNameLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).with.offset(20);
            make.top.equalTo(self.contentView).with.offset(10);
        }];
        
        [_showStyleLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(_fontNameLab);
            make.top.equalTo(_fontNameLab.mas_bottom).with.offset(10);
        }];
    }
    return self;
}


- (void)configInfo:(NSString *)info{
    _fontNameLab.text = [@"字体名称：" stringByAppendingString:info];
    NSLog(@"cell:%@",info);
    NSString * testStr = @"我的 has 16 words";
    //    NSString * testStr  = @我随手一打就是漂亮的十五个字了;
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:testStr];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0,3)];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(3,4)];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(7,4)];
    [str addAttribute:NSFontAttributeName value:[UIFont fontWithName:info size:30] range:NSMakeRange(0, 15)];//设置字体以及大小
    [_showStyleLab setAttributedText:str];
}

@end
