//
//  MyPageVC.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "MyPageVC.h"
#import "TitleCell.h"
#import "MyInformationCell.h"
#import "HPNewUserInformation.h"


@interface MyPageVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic , strong)UITableView * myPageVc;
@property (nonatomic , strong)NSArray * dataArray;
@property (nonatomic , strong)HPNewUserInformation * userInfo;
@end

@implementation MyPageVC
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WEIGHT [UIScreen mainScreen].bounds.size.width
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = @[@"ID号",@"性别",@"职业",@"兴趣",@"现居地",@"生日",@"年龄",@"星座"];
    }
    return _dataArray;
}
-(HPNewUserInformation *)userInfo{
    if (!_userInfo) {
        _userInfo = [[HPNewUserInformation alloc]init];
    }
    return _userInfo;
}
-(UITableView *)myPageVc{
    if (!_myPageVc) {
        _myPageVc = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WEIGHT, SCREEN_HEIGHT)];
        _myPageVc.delegate = self;
        _myPageVc.dataSource = self;
    }
    return _myPageVc;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else
        return 8;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * tableViewCell;
    if (indexPath.section == 0) {
        TitleCell * cell = [tableView dequeueReusableCellWithIdentifier:kTitleCell];
        cell.titleImage.image = [UIImage imageNamed:@"oval"];
        tableViewCell = cell;
        return tableViewCell;
    }else if (indexPath.section == 1){
        MyInformationCell * cell = [tableView dequeueReusableCellWithIdentifier:kMyInformationCell];
        NSString * str = self.dataArray[indexPath.row];
        cell.titleLab.text = str;
        if (indexPath.row == 0) {
            cell.contentlab.text = self.userInfo.uid;
        }else if (indexPath.row == 1) {
            cell.contentlab.text = self.userInfo.sex;
        } else if (indexPath.row == 2) {
            cell.contentlab.text = self.userInfo.job;
        } else if (indexPath.row == 3) {
            cell.contentlab.text = self.userInfo.interest;
        } else if (indexPath.row == 4) {
            cell.contentlab.text = [NSString stringWithFormat:@"%@%@",self.userInfo.province,self.userInfo.city];
        } else if (indexPath.row == 5) {
            cell.contentlab.text = self.userInfo.birthday;
        }else if (indexPath.row == 6) {
            
            if (self.userInfo.birthday.length>5) {
                NSString *year =[self.userInfo.birthday substringWithRange:NSMakeRange(0, 4)];
                NSDateFormatter *formater = [[NSDateFormatter alloc] init];
                [formater setDateFormat:@"yyyy"];
                NSString *nowyear = [formater stringFromDate:[NSDate date]];
                
                int age = [nowyear intValue] - [year intValue];
                
                cell.contentlab.text = [NSString stringWithFormat:@"%d",age];
                
            }
        }else if (indexPath.row == 7) {
            
            if (self.userInfo.birthday.length>5) {
                
                NSString *month = [self.userInfo.birthday substringWithRange:NSMakeRange(5, 2)];
                
                NSString *day = [self.userInfo.birthday substringWithRange:NSMakeRange(8, 2)];
                
                cell.contentlab.text = [self getConstellationWithMonth:[month intValue] day:[day intValue]];
            }
        }return tableViewCell;
    }else
        tableViewCell.selectionStyle = UITableViewCellSeparatorStyleNone;
        return tableViewCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 120;
    }else
        return 44;
}
- (NSString *)getConstellationWithMonth:(int)m_ day:(int)d_ {
    
    NSString * astroString = @"摩羯座水瓶座双鱼座白羊座金牛座双子座巨蟹座狮子座处女座天秤座天蝎座射手座摩羯座";
    
    NSString * astroFormat = @"102123444543";
    
    NSString * result;
    
    result = [NSString stringWithFormat:@"%@",[astroString substringWithRange:NSMakeRange(m_*3-(d_ < [[astroFormat substringWithRange:NSMakeRange((m_-1), 1)] intValue] - (-19))*3, 3)]];
    
    return result;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
