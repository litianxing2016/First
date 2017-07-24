//
//  head.m
//  WY
//
//  Created by lifeiyan on 17/7/20.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//

#import "head.h"
//#import "DTViewController.h"

@implementation head{
    @protected UIButton *button3;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self addUI];
    }
    return self;
}
-(void)addUI{
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 414, 108)];
    label1.backgroundColor = [UIColor whiteColor];
    [self addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 111, (414-9)/4, 50)];
    label2.backgroundColor = [UIColor whiteColor];
    [self addSubview:label2];
    
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake((414-9)/4+3, 111, (414-9)/4, 50)];
    label3.backgroundColor = [UIColor whiteColor];
    [self addSubview:label3];

    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(2*(414-9)/4+6, 111, (414-9)/4, 50)];
    label4.backgroundColor = [UIColor whiteColor];
    [self addSubview:label4];
    
    UILabel *label5 = [[UILabel alloc] initWithFrame:CGRectMake(3*(414-9)/4+9, 111, (414-9)/4, 50)];
    label5.backgroundColor = [UIColor whiteColor];
    [self addSubview:label5];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(25, 25, 60, 60);
    button1.clipsToBounds = YES;
    button1.layer.cornerRadius = 30;
    [button1 setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [self addSubview:button1];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(100, 35, 60, 30)];
    lab.text = @"可可落";
    [self addSubview:lab];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(100, 70, 50, 20);
    [button2 setTitle:@"Lv.8" forState:UIControlStateNormal];
    button2.tintColor = [UIColor blackColor];
    [button2.layer setBorderWidth:1];
    [button2.layer setBorderColor:[UIColor blackColor].CGColor];
    button2.layer.cornerRadius = 9;
    //允许圆角
    button2.layer.masksToBounds = YES;
    [self addSubview:button2];
    
    button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(280, 45, 80, 30);
    [button3 setTitle:@"签到" forState:UIControlStateNormal];
    button3.tintColor = [UIColor blackColor];
    [button3 setImage:[UIImage imageNamed:@"硬币.png"] forState:UIControlStateNormal];
    [button3 setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 0)];
    [button3.layer setBorderWidth:1];
    [button3.layer setBorderColor:[UIColor blackColor].CGColor];
    button3.layer.masksToBounds = YES;
    button3.layer.cornerRadius = 13;
    [button3 addTarget:self action:@selector(change) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button3];

    UIImageView *image5 = [[UIImageView alloc] initWithFrame:CGRectMake(3*(414-9)/4+9+42, 120, 18, 18)];
    image5.image = [UIImage imageNamed:@"铅笔.png"];
    [self addSubview:image5];
   
    UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(3*(414-9)/4+9, 130, (414-9)/4, 30)];
    lab1.text = @"我的资料";
    
    [lab1 setTextColor:[UIColor lightGrayColor]];
    lab1.font = [UIFont boldSystemFontOfSize:13];
    lab1.textAlignment = NSTextAlignmentCenter;
    [self addSubview:lab1];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button4.frame = CGRectMake(2*(414-9)/4+6, 111, (414-9)/4, 30);
    [button4 setTitle:@"粉丝" forState:UIControlStateNormal];
    button4.titleLabel.font = [UIFont systemFontOfSize:13];
    button4.tintColor = [UIColor lightGrayColor];
    [self addSubview:button4];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button5.frame = CGRectMake(2*(414-9)/4+6, 125, (414-9)/4, 30);
    [button5 setTitle:@"6" forState:UIControlStateNormal];
    button5.tintColor = [UIColor blackColor];
    [self addSubview:button5];

    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button6.frame = CGRectMake((414-9)/4+3, 111, (414-9)/4, 30);
    [button6 setTitle:@"关注" forState:UIControlStateNormal];
    button6.titleLabel.font = [UIFont systemFontOfSize:13];
    button6.tintColor = [UIColor lightGrayColor];
    [self addSubview:button6];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button7.frame = CGRectMake((414-9)/4+3, 125, (414-9)/4, 30);
    [button7 setTitle:@"3" forState:UIControlStateNormal];
    button7.tintColor = [UIColor blackColor];
    [self addSubview:button7];
    
    
    button10 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button10.frame = CGRectMake(0, 111, (414-9)/4, 30);
    [button10 setTitle:@"动态" forState:UIControlStateNormal];
    
    button10.titleLabel.font = [UIFont systemFontOfSize:13];
    button10.tintColor = [UIColor  lightGrayColor];
    
    [self addSubview:button10];
    
    UIButton *button11 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button11.frame = CGRectMake(35, 125, 30,30);
    [button11 setTitle:@"0" forState:UIControlStateNormal];
    button11.tintColor = [UIColor blackColor];
    [self addSubview:button11];
    
    self.backgroundColor = [UIColor lightGrayColor];
}
-(void)change{
    [button3 setTitle:@"已签到" forState:UIControlStateNormal];
    button3.tintColor = [UIColor redColor];
//    [button3.layer setBorderColor:[UIColor redColor].CGColor];
    [button3 setImage:nil forState:UIControlStateNormal];
}
@end
