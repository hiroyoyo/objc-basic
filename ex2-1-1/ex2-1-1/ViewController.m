//
//  ViewController.m
//  ex2-1-1
//
//  Created by 佐野浩代 on 2016/12/28.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

    

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _label.text = NSLocalizedString(@"keyWord",);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
