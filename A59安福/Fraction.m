//
//  Fraction.m
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
//约分（QFTest的对象方法，让自己管理的分数约分后自动打印结果）
- (void)simpleFraction
{
    int a = _fenzi;
    
    int b = _fenmu;
    
    if(_fenzi>_fenmu)
    {
        NSLog(@"分子大于分母");
        return;
    }
    int num = 0;
    int gongYueShu = 0;
    while (_fenzi != 0) {
        num = _fenmu % _fenzi;
        _fenmu = _fenzi;
        _fenzi = num;
        gongYueShu = _fenmu;
    }
    
    
    
    NSLog(@"%d/%d",a/gongYueShu,b/gongYueShu);
    
    
}
@end
