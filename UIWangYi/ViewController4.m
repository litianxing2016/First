//
//  ViewController4.m
//  UIWangYi
//
//  Created by LiTianYang on 2017/7/20.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "ViewController4.h"
#import "MyData.h"
#import "MyDataGroup.h"
#import "head.h"
#import "UITabBar+badge.h"
@interface ViewController4 ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;
    NSMutableArray *_datas;
}
@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"账号";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"playing"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchRight)];
    
    [self initData];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, self.tabBarController.tabBar.frame.origin.y) style:UITableViewStyleGrouped];
    
    head *view = [[head alloc]initWithFrame:CGRectMake(0, 64, 414, 160)];
//    UIView *end = [[UIView alloc]initWithFrame:CGRectMake(0, 800, 0, 50)];
//    end.backgroundColor = [UIColor whiteColor];
    _tableView.tableHeaderView = view;
//    _tableView.tableFooterView = end;
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [self.view addSubview:_tableView];
    //显示小红点
    [self.tabBarController.tabBar showBadgeOnItemIndex:2];
    //隐藏小红点
//    [self.tabBarController.tabBar hideBadgeOnItemIndex:2];
}

- (void)initData
{
    _datas = [[NSMutableArray alloc] init];
    
    MyData *data1 = [MyData initWithName:@"我的消息" andImageName:@"我的消息"];
    MyDataGroup *group1 = [MyDataGroup initWithName:@"1" andDatas:[NSMutableArray arrayWithObjects:data1, nil]];
    [_datas addObject:group1];
    
    MyData *data2 = [MyData initWithName:@"我的会员" andImageName:@"我的会员"];
    MyData *data3 = [MyData initWithName:@"商城" andImageName:@"商城"];
    MyData *data4 = [MyData initWithName:@"在线听歌免流量" andImageName:@"在线听歌免流量"];
    MyDataGroup *group2 = [MyDataGroup initWithName:@"2" andDatas:[NSMutableArray arrayWithObjects:data2,data3,data4, nil]];
    [_datas addObject:group2];
    
    MyData *data5 = [MyData initWithName:@"设置" andImageName:@"设置"];
    MyData *data6 = [MyData initWithName:@"扫一扫" andImageName:@"扫一扫"];
    MyData *data7 = [MyData initWithName:@"个性换肤" andImageName:@"个性换肤"];
    MyData *data8 = [MyData initWithName:@"夜间模式" andImageName:@"夜间模式"];
    MyData *data9 = [MyData initWithName:@"定时关闭" andImageName:@"定时关闭"];
    MyData *data10 = [MyData initWithName:@"音乐闹钟" andImageName:@"音乐闹钟"];
    MyData *data11 = [MyData initWithName:@"驾驶模式" andImageName:@"驾驶模式"];
    MyDataGroup *group3 = [MyDataGroup initWithName:@"3" andDatas:[NSMutableArray arrayWithObjects:data5,data6,data7,data8,data9,data10,data11, nil]];
    [_datas addObject:group3];
    
    MyData *data12 = [MyData initWithName:@"分享网易云音乐" andImageName:@"分享网易云音乐"];
    MyData *data13 = [MyData initWithName:@"关于" andImageName:@"关于"];
    MyDataGroup *group4 = [MyDataGroup initWithName:@"4" andDatas:[NSMutableArray arrayWithObjects:data12,data13, nil]];
    [_datas addObject:group4];
    
//    MyData *data14 = [MyData initWithName:@"                                 退出登录" andImageName:@"退出登录"];
    MyData *data14 = [MyData initWithName:@"退出登录" andImageName:@"退出登录"];
    MyDataGroup *group5 = [MyDataGroup initWithName:@"4" andDatas:[NSMutableArray arrayWithObject:data14]];
    [_datas addObject:group5];
    
}
#pragma mark - 数据源方法
#pragma mark 返回分组数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSLog(@"计算分组数%lu",(unsigned long)_datas.count);
    return _datas.count;
}

#pragma mark 返回每组行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"计算每组(组%li)行数",(long)section);
    MyDataGroup *group1=_datas[section];
    return group1.datas.count;
}

#pragma mark返回每行的单元格
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSIndexPath是一个结构体，记录了组和行信息
    
//    static NSString *identifier = @"Cell";
//    //1/创建静态标识符
//    static NSString *identifier = @"cell";
//    //2/根据标识符从重用池中取cell
//    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
//    //3/如果没有取到就创建一个新的
//    if(cell==nil)
//    {
//        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];//identifier创建好的cell自动给标识符cell
//    }
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    NSLog(@"生成单元格(组：%li,行%li)",(long)indexPath.section,(long)indexPath.row);
    MyDataGroup *group = _datas[indexPath.section];
    MyData *data = group.datas[indexPath.row];
    if (indexPath.section == 0 && indexPath.row == 0) {
        cell.detailTextLabel.text = @"20";

        cell.detailTextLabel.textAlignment = NSTextAlignmentCenter;
        cell.detailTextLabel.backgroundColor = [UIColor blackColor];

        cell.detailTextLabel.layer.cornerRadius = 5;
        cell.detailTextLabel.layer.masksToBounds = YES;
        
    }
    if (indexPath.section == 2 && indexPath.row == 3) {
        UISwitch *sw=[[UISwitch alloc]init];
        sw.onTintColor=[UIColor redColor];
        cell.accessoryView = sw;
    }
    if (indexPath.section == 2 && indexPath.row == 2) {
        cell.detailTextLabel.text = @"官方红";
        cell.detailTextLabel.font = [UIFont systemFontOfSize:12];
    }
    if (indexPath.section == 4 && indexPath.row == 0) {
        UITableViewCell *cell1 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        cell1.textLabel.textColor = [UIColor redColor];
        cell1.textLabel.textAlignment = NSTextAlignmentCenter;
        cell1.textLabel.text = data.name;
        return cell1;
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    NSLog(@"%@",cell);
    cell.textLabel.text = data.name;
    cell.imageView.image = [UIImage imageNamed:[data getIcon]];
    return cell;


}
#pragma mark 设置分组标题内容高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    if(section==0){
//        return 50;
//    }


    return 10;
}

#pragma mark 设置每行高度（每行高度可以不一样）
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 30;
//}

#pragma mark 设置尾部说明内容高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section == 4) {
        return 0.00000000000000001;
    }
    return 5;
}
- (void)touchRight
{
    NSLog(@"touchMe");
}
- (void)switchValueChange:(NSString *)s
{
//    return nil;
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
