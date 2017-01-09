//
//  ViewController.m
//  ex2-1-4
//
//  Created by 佐野浩代 on 2017/01/09.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)alertButton:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self okButtonPushed];
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self cancelButtonPushed];
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];

}

- (void)cancelButtonPushed {
    NSLog(@"Canselが押されました。");
}
- (void)okButtonPushed {
    NSLog(@"OKが押されました。");
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
