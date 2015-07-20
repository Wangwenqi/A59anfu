//
//  worker.m
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import "worker.h"

@implementation worker

- (void)byWool:(int)num
{
    NSLog(@"想购买木头数量为:%d",num);
    [self.test buyWoolResult:num];
}

@end
