//
//  NSObject+Property.m
//  runtime给分类添加属性
//
//  Created by 李宝瑜 on 2016/11/16.
//  Copyright © 2016年 李宝瑜. All rights reserved.
//

#import "NSObject+Property.h"
#import <objc/runtime.h>

@implementation NSObject (Property)

- (NSString *)name
{
    //根据关联的key，获取关联的值。
    return  objc_getAssociatedObject(self, @"name");
}

- (void)setName:(NSString
                 *)name
{
    //第一个参数：给哪个对象添加关联
    //第二个参数：关联的key，通过这个key获取
    //第三个参数：关联的value
    // 第四个参数:关联的策略(这个策略其实就是用@Property时候的策略)
    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
