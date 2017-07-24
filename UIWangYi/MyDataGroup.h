//
//  MyDataGroup.h
//  UIWangYi
//
//  Created by LiTianYang on 2017/7/20.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyDataGroup : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSMutableArray *datas;
- (MyDataGroup *)initWithName:(NSString *)name andDatas:(NSMutableArray *)datas;
+ (MyDataGroup *)initWithName:(NSString *)name andDatas:(NSMutableArray *)datas;
@end
