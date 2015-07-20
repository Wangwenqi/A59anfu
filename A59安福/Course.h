//
//  Course.h
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject

@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *teacherName;
@property (nonatomic,retain)NSNumber *time;
@property (nonatomic,retain)NSMutableArray *courseArr;


//1，通过plist文件读取课程信息并保存，返回课程数量（注意plist中课时为NSNumber类型）
- (int)saveCourseFromPlistPath:(NSString *)path;
//2，添加一门课程（课程名加唯一性判断）
- (BOOL)addOneCourse:(Course *)cou;
//3，查询所有课程总课时
- (int)allCourseTime;
//4，根据课程名修改老师名
- (void)setTeacherName:(NSString *)tn forCourseName:(NSString *)nameStr;
//5，展示所有课程信息
- (void)show;

@end
