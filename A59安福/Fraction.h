//
//  Fraction.h
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
//约分（QFTest的对象方法，让自己管理的分数约分后自动打印结果）

@property (nonatomic,assign)int fenzi;
@property (nonatomic,assign)int fenmu;

- (void)simpleFraction;
@end
