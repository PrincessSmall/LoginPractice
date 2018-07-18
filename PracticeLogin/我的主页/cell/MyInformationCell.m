//
//  MyInformationCell.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "MyInformationCell.h"
@interface MyInformationCell()

@end

@implementation MyInformationCell
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WEIGHT [UIScreen mainScreen].bounds.size.width
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.titleLab];
        [self.contentView addSubview:self.contentView];
    }
    return  self;
}
-(UILabel *)titleLab{
    if (!_titleLab) {
        _titleLab = [[UILabel alloc]initWithFrame:CGRectMake(22, 0, 45, 44)];
        [_titleLab setFont:[UIFont systemFontOfSize:14]];
        _titleLab.textAlignment = NSTextAlignmentLeft;
        
    }
    return _titleLab;
}
-(UILabel *)contentlab{
    if (!_contentlab) {
        _contentlab = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.titleLab.frame)+32, 0, SCREEN_WEIGHT-CGRectGetMaxX(self.titleLab.frame)-32-10, 44)];
        [_contentlab setFont:[UIFont systemFontOfSize:16]];
        _contentlab.textAlignment = NSTextAlignmentLeft;
        _contentlab.text = @"";
    }
    return _contentlab;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
