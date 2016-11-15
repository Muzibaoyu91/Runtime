//
//  ViewController.m
//  runtime发送消息
//
//  Created by Baoyu on 2016/11/15.
//  Copyright © 2016年 Baoy. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建对象
    Person *Xiaoming = ((Person * (*)(id, SEL))objc_msgSend)((id)[Person class], @selector(alloc));
    Xiaoming = ((Person * (*)(id, SEL))objc_msgSend)((id)Xiaoming,@selector(init));
    
    //发送类消息
    ((Person *(*)(id, SEL))objc_msgSend)((id)[Person class],@selector(classEat));
    
    //发送对象消息(无参数无返回值)
    ((Person *(*)(id, SEL))objc_msgSend)((id)(Xiaoming),@selector(eat));
    
    //带返回值不带参数
    NSString *name = ((NSString *(*)(id, SEL))objc_msgSend)((id)(Xiaoming),@selector(getEnglishName));
    kDebugLog(@"我的英文名字是:%@",name);
    
    //带参数带返回值
    NSUInteger studentNum = ((NSUInteger (*)(id, SEL, NSUInteger))objc_msgSend)((id)(Xiaoming),@selector(numberInClass:),8);
    kDebugLog(@"我在8班的numebr是%zd",studentNum);
}



@end
