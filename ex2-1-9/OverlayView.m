//
//  OverlayView.m
//  ex2-1-9
//
//  Created by 佐野浩代 on 2017/01/16.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OverlayView.h"

@implementation OverlayView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_target performSelector:_action withObject:self afterDelay:0.0f];
}

@end
