//
//  TwoButtonCell.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/17.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "TwoButtonCell.h"
@interface TwoButtonCell ()
@property (nonatomic , strong)UIButton * chatBtn;
@property (nonatomic , strong)UIButton * myQuestionBtn;
@end

@implementation TwoButtonCell
#define SCREEN_WEIGHT [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.chatBtn];
        [self.contentView addSubview:self.myQuestionBtn];
    }
    return self;
}
-(UIButton *)chatBtn{
    if (!_chatBtn) {
        _chatBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 20, SCREEN_WEIGHT/2.0, 30)];
        [_chatBtn setTitle:@"好友聊天" forState:UIControlStateNormal];
        [_chatBtn addTarget:self action:@selector(clickChat) forControlEvents:UIControlEventTouchUpInside];
    }
    return _chatBtn;
}
-(UIButton *)myQuestionBtn{
    if (!_myQuestionBtn) {
        _myQuestionBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WEIGHT/2.0, 20, SCREEN_WEIGHT/2.0, 30)];
        [_myQuestionBtn setTitle:@"我的提问" forState:UIControlStateNormal];
        [_myQuestionBtn addTarget:self action:@selector(clickMyquestion) forControlEvents:UIControlEventTouchUpInside];
    }
    return _myQuestionBtn;
}
-(void)clickChat{
    
    
}
-(void)clickMyquestion{
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
