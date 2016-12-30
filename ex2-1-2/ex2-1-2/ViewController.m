//
//  ViewController.m
//  ex2-1-2
//
//  Created by 佐野浩代 on 2016/12/30.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *Image;


@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _Image.contentMode = UIViewContentModeScaleAspectFit;
    _Image.clipsToBounds = YES;
    _Image.layer.cornerRadius = 90;
    
    
     UIImage *img = [UIImage imageNamed:@"kitty"];
    
    _Image.image = img;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
