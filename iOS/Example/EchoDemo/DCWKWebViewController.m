//
//  DCViewController.m
//  EchoDemo
//
//  Created by huangj on 2021/1/14.
//  Copyright © 2021 136998328@qq.com. All rights reserved.
//

#import "DCWKWebViewController.h"
#import <WebKit/WebKit.h>
@interface DCWKWebViewController ()
//@property(nonatomic, strong)  WKWebView * webview;
@end

@implementation DCWKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    WKWebView *webView = [[WKWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        // 设置访问的URL
        NSURL *url = [NSURL URLWithString:@"http://www.jianshu.com"];
        // 根据URL创建请求
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        // WKWebView加载请求
        [webView loadRequest:request];
        // 将WKWebView添加到视图
        [self.view addSubview:webView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
