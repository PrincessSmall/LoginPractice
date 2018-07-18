//
//  ViewController.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/17.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "ViewController.h"
#import "TwoButtonCell.h"
#import "TitleImageCell.h"
#import "TwoButtonCell.h"
#import "NomalCell.h"
#import "signatureCell.h"
#import "AppDelegate.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic , strong)UITableView * loginVc;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview: self.loginVc];
    
    
}
-(UITableView *)loginVc{
    if (!_loginVc) {
        _loginVc = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width, [[UIScreen mainScreen]bounds].size.height) style:UITableViewStylePlain];
        _loginVc.delegate = self;
        _loginVc.dataSource = self;
    }
    return _loginVc;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 11;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * tableviewcell;
    if (indexPath.row == 0) {
        TitleImageCell * cell = [tableView dequeueReusableCellWithIdentifier:kTitleImageCell];
        [cell.titleImageBtn setBackgroundImage:[UIImage imageNamed:@"oval"] forState:UIControlStateNormal];
        tableviewcell = cell;
        return tableviewcell;
    }else if (indexPath.row == 1){
        NomalCell * cell = [tableView dequeueReusableCellWithIdentifier:kNomalCell];
        cell.nomalLab.text = @"min";
        cell.nomalLab.textColor = [UIColor blackColor];
        tableviewcell = cell;
        return tableviewcell;
        
    }else if (indexPath.row == 2){
        signatureCell * cell = [tableView dequeueReusableCellWithIdentifier:ksignatureCell];
        tableviewcell = cell;
        return tableviewcell;
    }else if (indexPath.row == 3){
        TwoButtonCell * cell = [tableView dequeueReusableCellWithIdentifier:kTwoButtonCell];
        tableviewcell = cell;
        return tableviewcell;
    }else if (indexPath.row == 4){
        NomalCell * cell = [tableView dequeueReusableCellWithIdentifier:kNomalCell];
        cell.nomalLab.text = @"消息通知";
        tableviewcell = cell;
        return tableviewcell;
    }
    else if (indexPath.row == 5){
        NomalCell * cell = [tableView dequeueReusableCellWithIdentifier:kNomalCell];
        cell.nomalLab.text = @"个人主页";
        tableviewcell = cell;
        return tableviewcell;
    }else if (indexPath.row == 6){
        NomalCell * cell = [tableView dequeueReusableCellWithIdentifier:kNomalCell];
        cell.nomalLab.text = @"我的发表";
        tableviewcell = cell;
        return tableviewcell;
    }else if (indexPath.row == 7){
        NomalCell * cell = [tableView dequeueReusableCellWithIdentifier:kNomalCell];
        cell.nomalLab.text = @"我的钱包";
        tableviewcell = cell;
        return tableviewcell;
    }else if (indexPath.row == 8){
        NomalCell * cell = [tableView dequeueReusableCellWithIdentifier:kNomalCell];
        cell.nomalLab.text = @"意见反馈";
        tableviewcell = cell;
        return tableviewcell;
    }else if (indexPath.row == 9){
        NomalCell * cell = [tableView dequeueReusableCellWithIdentifier:kNomalCell];
        cell.nomalLab.text = @"联系客服";
        tableviewcell = cell;
        return tableviewcell;
    }else if (indexPath.row == 10){
        NomalCell * cell = [tableView dequeueReusableCellWithIdentifier:kNomalCell];
        cell.nomalLab.text = @"设置";
        tableviewcell = cell;
        return tableviewcell;
    }else
        tableviewcell.selectionStyle = UITableViewCellSelectionStyleNone;
        return tableviewcell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 1) {
        <#statements#>
    }
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
