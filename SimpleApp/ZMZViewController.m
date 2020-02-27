//
//  ZMZViewController.m
//  SimpleApp
//
//  Created by 郑梦真 on 2020/2/18.
//  Copyright © 2020 MaggieZ. All rights reserved.
//

#import "ZMZViewController.h"
#import <WebKit/WebKit.h>

@interface ZMZViewController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation ZMZViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, self.view.frame.size.height - 88)];
    
    // 把加载的delegate设置为自己
//    self.webView.navigationDelegate = self;
    [self.view addSubview:self.webView];
    [self.webView loadRequest:request];
}

//- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
//    NSLog(@"1111");
//}
//
//- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation{
//    NSLog(@"2222");
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
