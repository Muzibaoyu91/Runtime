//
//  Person.h
//  runtime发送消息
//
//  Created by Baoyu on 2016/11/15.
//  Copyright © 2016年 Baoy. All rights reserved.
//

#import <Foundation/Foundation.h>
/** DEBUG */
#ifdef DEBUG
#    define kDebugLog(...)   NSLog(__VA_ARGS__)
#    define kDebugMethod(...)   NSLog(@"%s", __func__) // 打印当前所在function
#else
#    define kDebugLog(...)
#    define kDebugMethod(...)
#endif


@interface Person : NSObject

//测试方法
- (void)eat;

+ (void)classEat;

- (NSString *)getEnglishName;

- (NSUInteger)numberInClass:(NSUInteger)classNum;

@end
