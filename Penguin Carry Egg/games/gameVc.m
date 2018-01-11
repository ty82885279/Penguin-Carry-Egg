//
//  gameVc.m
//  Penguin Carry Egg
//
//  Created by lx on 2018/1/11.
//  Copyright © 2018年 Xue. All rights reserved.
//

#import "gameVc.h"
#import <WebKit/WebKit.h>

@interface gameVc ()<WKNavigationDelegate>
@property(nonatomic,strong)WKWebView *webView;

@end

@implementation gameVc

-(void)viewDidLoad
{
    
//    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor orangeColor];
//
//
//    _webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    _webView.navigationDelegate = self;
//
//    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m15040563312.gitee.io/pcdandan/"]]];
//
//
//    self.webView.backgroundColor = [UIColor whiteColor];
//
//    [self.view addSubview:_webView];
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    self.view.backgroundColor = [UIColor orangeColor];


    _webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _webView.navigationDelegate = self;

    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m15040563312.gitee.io/pcdandan/"]]];


    self.webView.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:_webView];

}

-(BOOL)shouldAutorotate

{
    
    return NO;
    
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations

{
    
    return UIInterfaceOrientationMaskLandscape;
    
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation

{
    
    return UIInterfaceOrientationLandscapeRight;
    
}
@end
