//
//  MyData.h
//  UIWangYi
//
//  Created by LiTianYang on 2017/7/20.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyData : NSObject
@property (nonatomic,copy) NSString *name;
- (MyData *)initWithName:(NSString *)Name;
- (NSString *)getName;
+ (MyData *)initWithName:(NSString *)Name;
@end
