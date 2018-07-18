//
//  NomalCell.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "NomalCell.h"
#import "ViewController.h"
@interface NomalCell()

//@property (nonatomic , strong)UILabel * myPageLab;
//@property (nonatomic , strong)UILabel * myPublishLab;
//@property (nonatomic , strong)UILabel * myWalletLab;
//@property (nonatomic , strong)UILabel * mySuggestsLab;
//@property (nonatomic , strong)UILabel * customServiceLab;
@end


@implementation NomalCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.nomalLab];
       
    }
    return self;
}
-(UILabel *)nomalLab{
    if (!_nomalLab) {
        _nomalLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WEIGHT, 40)];
    }
    return _nomalLab;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
