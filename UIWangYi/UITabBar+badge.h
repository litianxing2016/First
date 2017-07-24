//
//  badge.h
//  UIWangYi
//
//  Created by LiTianYang on 2017/7/21.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (badge)
- (void)showBadgeOnItemIndex:(int)index; //显示小红点
- (void)hideBadgeOnItemIndex:(int)index; //隐藏小红点

@end
