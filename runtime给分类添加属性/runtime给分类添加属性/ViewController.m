//
//  ViewController.m
//  runtime给分类添加属性
//
//  Created by 李宝瑜 on 2016/11/16.
//  Copyright © 2016年 李宝瑜. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Property.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSObject *objc = [[NSObject alloc] init];
    objc.name= @"张三";
    NSLog(@"%@",objc.name);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
