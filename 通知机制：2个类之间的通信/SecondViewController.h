//
//  SecondViewController.h
//  通知机制：2个类之间的通信
//
//  Created by zuoA on 16/4/20.
//  Copyright © 2016年 啊左. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *MyTextView;

- (IBAction)saveBtn:(UIButton *)sender;                      //保存返回按钮事件

@end
