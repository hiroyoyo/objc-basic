//
//  ViewController.m
//  ex2-1-3
//
//  Created by 佐野浩代 on 2017/01/03.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *background;


@end
@implementation ViewController

- (IBAction)change:(id)sender{
    NSArray<UIImage *> *Images = @[[UIImage imageNamed:@"cinamon.png"],[UIImage imageNamed:@"kikilala.png"],[UIImage imageNamed:@"kitty.png"],[UIImage imageNamed:@"mymelody.png"],[UIImage imageNamed:@"pompompurin.png"]];
    
    int value = (int)arc4random_uniform((u_int32_t)Images.count);
    
    _background.contentMode = UIViewContentModeScaleAspectFit;
    _background.image = Images[value];
        
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
