//
//  TitleCell.h
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import <UIKit/UIKit.h>
static NSString * const kTitleCell = @"kTitleCell";
@interface TitleCell : UITableViewCell
@property (nonatomic , strong)UIImageView * titleImage;
@property (nonatomic , strong)UIButton * publishBtn;
@property (nonatomic , strong)UIButton * fensiBtn;
@property (nonatomic , strong)UIButton * guanZhuBtn;
@property (nonatomic , strong)UIButton * editBtn;
@end
