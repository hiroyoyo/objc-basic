//
//  ViewController.m
//  ex2-1-5
//
//  Created by 佐野浩代 on 2017/01/09.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)actionSheetBtn:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ActionSheet"
                                                                             message:@""
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    // 左から順にボタンが配置
    [alertController addAction:[UIAlertAction actionWithTitle:@"Facebook" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self facebookButtonPushed];
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Twitter" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self twitterButtonPushed];
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Line" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self lineButtonPushed];
    }]];

    
    [self presentViewController:alertController animated:YES completion:nil];
    
    
}


- (void)facebookButtonPushed {
    NSLog(@"Facebookが押されました。");
    
}
- (void)twitterButtonPushed {
    NSLog(@"Twitterが押されました。");
    
}
- (void)lineButtonPushed {
    NSLog(@"Lineが押されました。");
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
