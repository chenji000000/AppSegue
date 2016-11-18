//
//  ViewController.m
//  App-A
//
//  Created by 陈吉 on 2016/11/17.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    //1.获取应用程序App-B的URL Scheme
    NSURL *appBUrl = [NSURL URLWithString:@"AppB://?AppA"];
    
    //2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
        //3.打开应用程序App-B
        [[UIApplication sharedApplication] openURL:appBUrl];
    } else {
    
        NSLog(@"没有安装");
    }
}

- (IBAction)jumpToPage1:(id)sender {
    //1.获取应用程序App-B的Page1页面的URL
    NSURL *appBUrl = [NSURL URLWithString:@"AppB://Page1?AppA"];
    
    //2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
        //3.打开应用程序App-B的Page1页面
        [[UIApplication sharedApplication] openURL:appBUrl];
    } else {
        
        NSLog(@"没有安装");
    }
}

- (IBAction)jumpToPage2:(id)sender {
    //1.获取应用程序App-B的Page2页面的URL
    NSURL *appBUrl = [NSURL URLWithString:@"AppB://Page2?AppA"];
    
    //2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appBUrl]) {
        //3.打开应用程序App-B的Page2页面
        [[UIApplication sharedApplication] openURL:appBUrl];
    } else {
        
        NSLog(@"没有安装");
    }
}

@end
