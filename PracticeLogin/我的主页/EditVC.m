//
//  EditVC.m
//  PracticeLogin
//
//  Created by 李敏 on 2018/7/18.
//  Copyright © 2018年 李敏. All rights reserved.
//

#import "EditVC.h"

@interface EditVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic , strong)UITableView * editVC;
@end

@implementation EditVC
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WEIGHT [UIScreen mainScreen].bounds.size.width
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(UITableView *)editVC{
    if (!_editVC) {
        _editVC = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WEIGHT, SCREEN_HEIGHT) style:UITableViewStylePlain];
        _editVC.delegate = self;
        _editVC.dataSource = self;
    }
    return _editVC;
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
