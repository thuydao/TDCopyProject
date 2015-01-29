//
//  QSViewController.m
//  TeamplateProject
//
//  Created by thuydd on 1/15/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "QSViewController.h"

@interface QSViewController ()
@end

@implementation QSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    webview = [[UIWebView alloc] init];
//    
//    
//    NSString *html = [[NSBundle mainBundle] pathForResource:@"android" ofType:@"html"];
//    
//    NSData *htmlData = [NSData dataWithContentsOfFile:html];
//    [webview loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@""]];
//    webview.delegate = (id)self;
//    webview.frame = self.view.frame;
//    [self.view addSubview:webview];
    
    NSString *videoURLString = @"https://www.youtube.com/watch?v=Zp9zm1RsQ6o";
    NSURL *videoURL = [NSURL URLWithString:videoURLString];
    MPMoviePlayerController *moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:videoURL];
    [moviePlayer prepareToPlay];
    [moviePlayer play];
    [self.view addSubview:moviePlayer.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated {
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"");
    [self performSelectorOnMainThread:@selector(abc) withObject:nil waitUntilDone:10];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
}

- (void)abc
{
    NSString *documentdir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];

    NSLog(@"%@",documentdir);
    
    [webview stringByEvaluatingJavaScriptFromString:@"var doc = new jsPDF();\
     doc.text(20, 20, 'Hello world!');\
     doc.text(20, 30, 'This is client-side Javascript, pumping out a PDF.');\
     doc.addPage();\
     doc.text(20, 20, 'Do you like that?');\
     \
     doc.save('Test.pdf');\
     javascript:demoTwoPageDocument();"];
    
}

@end
