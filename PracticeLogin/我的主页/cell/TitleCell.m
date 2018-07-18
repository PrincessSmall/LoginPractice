//
//  TitleCell.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "TitleCell.h"
@interface TitleCell ()


@end

@implementation TitleCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.titleImage];
        [self.contentView addSubview:self.publishBtn];
        [self.contentView addSubview:self.fensiBtn];
        [self.contentView addSubview: self.guanZhuBtn];
        [self.contentView addSubview:self.editBtn];
    
    }
    return self;
}
-(UIImageView *)titleImage{
    if (!_titleImage) {
        _titleImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 80, 80)];
        _titleImage.layer.cornerRadius = 40;
    }
    return  _titleImage;
}
-(UIButton *)publishBtn{
    if (!_publishBtn) {
        _publishBtn = [[UIButton alloc]initWithFrame:CGRectMake(105, 10, 20, 30)];
        [_publishBtn setTitle:@"发表" forState:UIControlStateNormal];
        
    }
    return _publishBtn;
}
-(UIButton *)fensiBtn{
    if (!_fensiBtn) {
        _fensiBtn = [[UIButton alloc]initWithFrame:CGRectMake(160, 10, 20, 30)];
        [_fensiBtn setTitle:@"粉丝" forState:UIControlStateNormal];
    }
    return _fensiBtn;
}
-(UIButton *)guanZhuBtn{
    if (!_guanZhuBtn) {
        _guanZhuBtn = [[UIButton alloc]initWithFrame:CGRectMake(215, 10, 20, 30)];
        [_guanZhuBtn setTitle:@"关注" forState:UIControlStateNormal];
    }
    return _guanZhuBtn;
}
-(UIButton *)editBtn{
    if (!_editBtn) {
        _editBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 50, 140, 40)];
        [_editBtn setTitle:@"点击编辑资料" forState:UIControlStateNormal];
    }
    return _editBtn;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
