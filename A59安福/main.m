//
//  main.m
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QFtest.h"
#import "Dog.h"
#import "Pig.h"
int main(int argc, const char * argv[])
{
    QFtest *test = [[QFtest alloc] init];
    
    //读取保存  返回课程种类数量
    NSString *path = @"/Users/qianfeng/Desktop/A59anfu/A59安福/Course.plist";
    int a = [test.course saveCourseFromPlistPath:path];
    NSLog(@"课程数量为:%d",a);
    
    
    //添加
    Course *cou = [[Course alloc] init];
    cou.name = @"语文";
    cou.teacherName = @"李明";
    NSNumber *num = [NSNumber numberWithInt:50];
    cou.time = num;
    BOOL add = [test.course addOneCourse:cou];
    NSLog(@"addResult = %d",add);
    
    //查询所有总课时
    int allTime = [test.course allCourseTime];
    NSLog(@"总课时:%d",allTime);
    
    //根据课程名字，修改老师名字
    [test.course setTeacherName:@"安福" forCourseName:@"语文"];
    
    //show
    [test.course show];
    
    //字符串倒序输出
    NSString *str = [QFtest reverseStr:@"abcde"];
    NSLog(@"字符串倒序:%@",str);
    
    //字符串压缩
    NSString * str1 = [QFtest zipFromString:@"aaabbbc"];
    NSLog(@"字符串压缩:%@",str1);
    
    //网址解析
    NSString *str2 = [QFtest hostFromUrl:@"www.baidu.com/aaa"];
    NSLog(@"网址:%@",str2);
    
    //分数约分
    test.fra.fenzi = 3;
    test.fra.fenmu = 20;
    [test.fra simpleFraction];
    
    //继承，多态
    Dog *dog = [[Dog alloc] init];
    Pig *pig = [[Pig alloc] init];
    [test beatAnimail:dog];
    [test beatAnimail:pig];
    
    [test wantBuyWool:10];
    
    return 0;
}

