//
//  MyInformationCell.h
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import <UIKit/UIKit.h>
static NSString * const kMyInformationCell = @"kMyInformationCell";

@interface MyInformationCell : UITableViewCell
@property (nonatomic , strong)UILabel * titleLab;
@property (nonatomic , strong)UILabel * contentlab;
@end
