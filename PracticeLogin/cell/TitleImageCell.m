//
//  TitleImageCell.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "TitleImageCell.h"
#import "ViewController.h"
@interface TitleImageCell ()


@end


@implementation TitleImageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.titleImageBtn];
    }
    return self;
}
-(UIButton *)titleImageBtn{
    if (!_titleImageBtn) {
        _titleImageBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WEIGHT/2.0-40, 40, 80, 80)];
    }
    return _titleImageBtn;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
