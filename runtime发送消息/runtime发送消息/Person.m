//
//  Person.m
//  runtime发送消息
//i
//  Created by Baoyu on 2016/11/15.
//  Copyright © 2016年 Baoy. All rights reserved.
//

#import "Person.h"


@implementation Person

- (void)eat
{
    kDebugLog(@"I'm eating");
}


+ (void)classEat
{
    kDebugLog(@"Class is Eating");
}

- (NSString *)getEnglishName
{
    return @"Jerry";
}

- (NSUInteger)numberInClass:(NSUInteger)classNum
{
    return classNum + 5;
}

@end
