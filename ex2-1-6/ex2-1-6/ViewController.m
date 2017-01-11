//
//  ViewController.m
//  ex2-1-6
//
//  Created by 佐野浩代 on 2017/01/11.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)backButton:(id)sender;
- (IBAction)reloadButton:(id)sender;
- (IBAction)forwardButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    NSString *path = @"http://www.google.co.jp";
    NSURL *url = [NSURL URLWithString:path];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:req];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)backButton:(id)sender{
    [_webView goBack];
}

- (IBAction)reloadButton:(id)sender {
    [_webView reload];
}

- (IBAction)forwardButton:(id)sender {
    [_webView goForward];
}


-(void)WebView:(UIWebView *)WebView didFailLoadWithError:(NSError *)error{
    if([error code] != NSURLErrorCancelled) {
        NSLog(@"オフラインです");
    }
}
@end
