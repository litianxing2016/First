//
//  MyData.m
//  UIWangYi
//
//  Created by LiTianYang on 2017/7/20.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "MyData.h"

@implementation MyData
- (MyData *)initWithName:(NSString *)name andImageName:(NSString *)icon
{
    if(self = [super init]){
        self.name = name;
        self.icon = icon;
    }
    return self;
}
- (NSString *)getName
{
    return self.name;
}
- (NSString *)getIcon
{
    return self.icon;
}
+ (MyData *)initWithName:(NSString *)name andImageName:(NSString *)icon
{
    MyData *data = [[MyData alloc] initWithName:name andImageName:icon];
    return data;
}
@end
