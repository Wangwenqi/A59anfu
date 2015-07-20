//
//  QFtest.h
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"
#import "Fraction.h"
#import "Animal.h"
#import "worker.h"
@interface QFtest : NSObject<workerProtocol>

@property (nonatomic,retain)Course *course;
@property (nonatomic,retain)Fraction *fra;

//1，字符串倒序，如：goodMorning--------->gninroMdoog
+ (NSString *)reverseStr:(NSString *)str;

//2，压缩字符串，如：eeeRRRRRmm------->e3R5m2
+ (NSString *)zipFromString:(NSString *)str;
//解析网址
+ (NSString *)hostFromUrl:(NSString *)url;

- (void)beatAnimail:(Animal *)animal;

//购买木头
- (void)wantBuyWool:(int)num;

@end
