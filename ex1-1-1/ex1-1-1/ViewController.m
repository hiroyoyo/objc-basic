//
//  ViewController.m
//  ex1-1-1
//
//  Created by ITユーザー on 2016/12/14.
//  Copyright © 2016年 ITユーザー. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BOOL yesNo = YES;
    NSString *str = @"ABC";
    NSInteger num = 123;
    float val = 123.45;
    
    
    NSLog(@"YESNO: %d",yesNo);
    NSLog(@"str: %@", str);
    NSLog(@"num: %zd",num);
    NSLog(@"val: %.2f",val);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
