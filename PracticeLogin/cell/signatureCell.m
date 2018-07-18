//
//  signatureCell.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "signatureCell.h"

@interface signatureCell()
@property (nonatomic , strong)UILabel * signatureLab;
@property (nonatomic , strong)UIButton * modifyNicknameBtn;
@end
@implementation signatureCell
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WEIGHT [UIScreen mainScreen].bounds.size.width
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.signatureLab];
        [self.contentView addSubview:self.modifyNicknameBtn];
    }
    return self;
}
-(UILabel *)signatureLab{
    if (!_signatureLab) {
        _signatureLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,SCREEN_WEIGHT-60 , self.contentView.frame.size.height)];
        _signatureLab.text = @"暂无签名";
    }
    return _signatureLab;
}
-(UIButton *)modifyNicknameBtn{
    if (!_modifyNicknameBtn) {
        _modifyNicknameBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WEIGHT-60 ,0, 40, self.contentView.frame.size.height)];
    }
    return _modifyNicknameBtn;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
