//
//  SecondViewController.m
//  通知机制：2个类之间的通信
//
//  Created by zuoA on 16/4/20.
//  Copyright © 2016年 啊左. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)saveBtn:(UIButton *)sender {
    
    //返回视图A并发布通知
    [self dismissViewControllerAnimated:YES completion:^{
        //1.创建userInfo携带的信息
        NSString *str = self.MyTextView.text;
        NSDictionary *dictData = [NSDictionary dictionaryWithObject:str forKey:@"MyUserInfoKey"];
        //2.发布信息
        [[NSNotificationCenter defaultCenter]postNotificationName:@"MyNotificationName" object:nil userInfo:dictData];
    }];
}
@end
