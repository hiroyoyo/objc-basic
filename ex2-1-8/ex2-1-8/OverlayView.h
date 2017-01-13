//
//  OverlayView.h
//  ex2-1-8
//
//  Created by 佐野浩代 on 2017/01/13.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#ifndef OverlayView_h
#define OverlayView_h

#import <UIKit/UIKit.h>

@interface OverlayView : UIView
@property(nonatomic, weak) id target;
@property(nonatomic, assign) SEL action;
@end

#endif /* OverlayView_h */
