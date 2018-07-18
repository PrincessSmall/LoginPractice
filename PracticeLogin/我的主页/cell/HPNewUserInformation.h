//
//  HPNewUserInformation.h
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HPNewUserInformation : NSObject
@property (nonatomic, copy) NSString *nickname;

//粉丝数
@property (nonatomic, copy) NSString *followers;

@property (nonatomic, copy) NSString *uid;

@property (nonatomic, copy) NSString *sex;

//关注数
@property (nonatomic, copy) NSString *attentions;

//发帖量
@property (nonatomic, copy) NSString *articles_num;

//省
@property (nonatomic, copy) NSString *province;

@property (nonatomic, copy) NSString *avatar;

@property (nonatomic, copy) NSString *birthday;

@property (nonatomic, copy) NSString *city;

@property (nonatomic, copy) NSString *sig;

@property (nonatomic, copy) NSString *interest;

@property (nonatomic, copy) NSString *job;

@property (nonatomic, copy) NSString *follower_status;

@end
