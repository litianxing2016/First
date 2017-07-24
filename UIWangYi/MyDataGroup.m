//
//  MyDataGroup.m
//  UIWangYi
//
//  Created by LiTianYang on 2017/7/20.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "MyDataGroup.h"

@implementation MyDataGroup
- (MyDataGroup *)initWithName:(NSString *)name andDatas:(NSMutableArray *)datas
{
    if (self = [super init]) {
        self.name = name;
        self.datas = datas;
    }
    return self;
}
+ (MyDataGroup *)initWithName:(NSString *)name andDatas:(NSMutableArray *)datas
{
    MyDataGroup *group = [[MyDataGroup alloc] initWithName:name andDatas:datas];
    return group;
}
@end
