//
//  Page2ViewController.m
//  App-B
//
//  Created by 陈吉 on 2016/11/18.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Page2ViewController.h"

@interface Page2ViewController ()

@end

@implementation Page2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goBack:(id)sender {
    //1.拿到对应应用程序的URL Scheme
    NSString *urlSchemeString = [[self.urlString componentsSeparatedByString:@"?"] lastObject];
    NSString *urlString = [urlSchemeString stringByAppendingString:@"://"];
    
    //2.获取对应应用程序的URL
    NSURL *url = [NSURL URLWithString:urlString];
    
    //3.判断是否可以打开
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}

@end
