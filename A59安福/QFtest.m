//
//  QFtest.m
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import "QFtest.h"

@implementation QFtest

- (id)init
{
    self = [super init];
    if(self)
    {
        self.course = [[Course alloc] init];
        self.fra = [[Fraction alloc] init];
    }
    return  self;
}

//1，字符串倒序，如：goodMorning--------->gninroMdoog
+ (NSString *)reverseStr:(NSString *)str
{
    NSMutableString *newStr = [[NSMutableString alloc] init];
    NSUInteger i;
    for(i=str.length;i>0;i--)
    {
        [newStr appendString:[str substringFromIndex:str.length-1]];
        str = [str substringToIndex:str.length-1];
    }
   return newStr;
}

//2，压缩字符串，如：eeeRRRRRmm------->e3R5m2
+ (NSString *)zipFromString:(NSString *)str
{
   NSMutableString *newStr = [[NSMutableString alloc] init];
    int i=0;
    int j=1;
    while(i<str.length-1)
    {
        if([str characterAtIndex:i] == [str characterAtIndex:(i+1)])
            j++;
        else{
            [newStr appendString:[NSString stringWithFormat:@"%c%d",[str characterAtIndex:i],j]];
            j=1;
        }
        i++;
    }
    [newStr appendString:[NSString stringWithFormat:@"%c%d",[str characterAtIndex:i],j]];
    return newStr;
}

//解析网址
+ (NSString *)hostFromUrl:(NSString *)url
{
    NSMutableString *newStr = [[NSMutableString alloc] init];
    if([url hasPrefix:@"http://"])
    {
        NSString *str = [url substringFromIndex:7];
        NSRange range = [str rangeOfString:@"/"];

        if(range.location != NSNotFound)
        {
            return [str substringToIndex:range.location];
        }
        else
        {
            return str;
        }
        
    }else
    {
        NSRange range = [url rangeOfString:@"/"];
        return [url substringToIndex:range.location];
    }
    
    
    return newStr;
}

- (void)beatAnimail:(Animal *)animal
{
    [animal beated];
}

//QDTest想购买木头
- (void)wantBuyWool:(int)num
{
    worker *wo = [[worker alloc] init];
    wo.test = self;
    [wo byWool:10];
}

- (void)buyWoolResult:(int)num
{
    NSLog(@"工人买了%d根木头",num);
}

@end
