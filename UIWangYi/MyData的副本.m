//
//  MyData.m
//  UIWangYi
//
//  Created by LiTianYang on 2017/7/20.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "MyData.h"

@implementation MyData
- (MyData *)initWithName:(NSString *)Name
{
    if(self = [super init]){
        self.name = Name;
    }
    return self;
}
- (NSString *)getName
{
    return self.name;
}
+ (MyData *)initWithName:(NSString *)Name
{
    MyData *data = [[MyData alloc] initWithName:Name];
    return data;
}
@end
