//
//  Course.m
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import "Course.h"

@implementation Course
//1，通过plist文件读取课程信息并保存，返回课程数量（注意plist中课时为NSNumber类型）
- (int)saveCourseFromPlistPath:(NSString *)path
{
    int courseNum = 0;
    NSMutableArray *arr = [NSMutableArray arrayWithContentsOfFile:path];
    NSMutableArray *arr1 = [NSMutableArray array];
    for (NSDictionary *dic in arr) {
        Course *co = [[Course alloc] init];
        co.name = [dic objectForKey:@"name"];
        co.teacherName = [dic objectForKey:@"teacherName"];
        co.time = [dic objectForKey:@"time"];
        [arr1 addObject:co];
    }
    _courseArr = arr1;
    courseNum = (int)arr1.count;
    return courseNum;
}


//2，添加一门课程（课程名加唯一性判断）
- (BOOL)addOneCourse:(Course *)cou
{
    BOOL addResult = YES;
    for(int i=0;i<_courseArr.count;i++)
    {
//        NSMutableDictionary *dic = [_courseArr objectAtIndex:i];
//        if([[dic objectForKey:@"name"]isEqualToString:cou.name])
//            return NO;
        Course *co = [_courseArr objectAtIndex:i];
        if([co.name isEqualToString:cou.name])
            return NO;
    }
    [_courseArr addObject:cou];
    
    return addResult;
}
//3，查询所有课程总课时
- (int)allCourseTime
{
    int allCourseTime = 0;
    
    for (int i=0;i<_courseArr.count;i++) {
        Course *co = [_courseArr objectAtIndex:i];
        int num = [co.time intValue];
        allCourseTime += num;
    }
    
    return allCourseTime;
}
//4，根据课程名修改老师名
- (void)setTeacherName:(NSString *)tn forCourseName:(NSString *)nameStr
{
    for (int i=0;i<_courseArr.count;i++) {
        Course *co = [_courseArr objectAtIndex:i];
        if([co.name isEqualToString:nameStr])
        {
            co.teacherName = tn;
            break;
//          [dic removeObjectForKey:@"teacherName"];
//          [dic setValue:tn forKey:@"teacherName"];
        }
    }
}
//5，展示所有课程信息
- (void)show
{
    for(int i=0;i<_courseArr.count;i++)
    {
        Course *co = [_courseArr objectAtIndex:i];
        NSLog(@"课程名:%@,教师名:%@,课时:%@",co.name,co.teacherName,co.time);
    }
}

@end
