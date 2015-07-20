//
//  worker.h
//  A59安福
//
//  Created by qianfeng on 15-6-8.
//  Copyright (c) 2015年 安福. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol workerProtocol <NSObject>

- (void)buyWoolResult:(int)num;

@end


@interface worker : NSObject

@property (nonatomic,retain)id<workerProtocol> test;

- (void)byWool:(int)num;

@end
