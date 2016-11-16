//
//  ViewController.m
//  runtime动态添加方法
//
//  Created by Baoyu on 2016/11/15.
//  Copyright © 2016年 Baoy. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [[Person alloc] init];
    
    // 默认person，没有实现eat方法，可以通过performSelector调用，但是会报错。
    // 动态添加方法就不会报错
    [p performSelector:@selector(eat)];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
