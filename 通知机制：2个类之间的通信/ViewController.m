//
//  ViewController.m
//  通知机制：2个类之间的通信
//
//  Created by zuoA on 16/4/20.
//  Copyright © 2016年 啊左. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.注册为观察者，监听B视图中的通知
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(AMethod:) name:@"MyNotificationName" object:nil];
}

-(void)AMethod:(NSNotification *)notification
{
    //2.获取通知携带的数据，更新label的文本信息
    NSDictionary *dictData = [notification userInfo];
    NSString *str = [dictData objectForKey:@"MyUserInfoKey"];
    self.myLabel.text = str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    //3.移除所有通知
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

@end
