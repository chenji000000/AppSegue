//
//  ViewController.m
//  App-B
//
//  Created by 陈吉 on 2016/11/17.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "Page1ViewController.h"
#import "Page2ViewController.h"

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"homeToPage1"]) {
        //获得将要跳转的界面Page1的控制器
        Page1ViewController *Page1Vc = segue.destinationViewController;
        //保存完整的App-A的URL给跳转界面Page1
        Page1Vc.urlString = self.urlString;
    } else if ([segue.identifier isEqualToString:@"homeToPage2"]) {
        //获得将要跳转的界面Page2的控制器
        Page2ViewController *Page2Vc = segue.destinationViewController;
        //保存完整的App-A的URL给跳转界面Page2
        Page2Vc.urlString = self.urlString;
    }
}

@end
