//
//  ViewController.m
//  ex2-1-9
//
//  Created by 佐野浩代 on 2017/01/13.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"
#import "OverlayView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePickerView;

@property(nonatomic, strong) UIView *areaView;
@property(nonatomic, strong) UIDatePicker *datePicker;
@property(nonatomic, strong) OverlayView *overlayView;

@property (weak, nonatomic) IBOutlet UILabel *label;


@end

@implementation ViewController


static const float AREA_PICKER_ACCESSORY_HEIGHT = 40;
static const float AREA_PICKER_HEIGHT = 200;

- (void)viewDidLoad {
        [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
    
    _label.userInteractionEnabled = YES;
    _label.tag = 100;

    
        // キャンセル用ビューの作成
        _overlayView = [[OverlayView alloc] initWithFrame:CGRectZero];
        _overlayView.target = self;
        _overlayView.action = @selector(hideAreaView);
        _overlayView.backgroundColor = [UIColor whiteColor];
        _overlayView.alpha = 0.4;
    
        [self.view addSubview:_overlayView];
    
    
        // エリア選択ピッカーの作成
        [self buildAreaPickerView];
    }


- (void)showAreaView:(UILabel*)label{
        [self.view bringSubviewToFront:_overlayView]; // 最前面に移動
        [self.view bringSubviewToFront:_areaView]; // 最前面に移動
        _overlayView.frame = [[UIScreen mainScreen] bounds];
        [UIView animateWithDuration:.20 animations:^{
        _areaView.transform = CGAffineTransformMakeTranslation(0, -(AREA_PICKER_ACCESSORY_HEIGHT + AREA_PICKER_HEIGHT));
    }];

}
- (void)buildAreaPickerView{
        float height = self.view.bounds.size.height;
        float width = self.view.bounds.size.width;
    
    
    //アクセサリビューとピッカービューを乗せるビューの作成
        float areaViewHeight = AREA_PICKER_ACCESSORY_HEIGHT + AREA_PICKER_HEIGHT;
        _areaView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                         height,
                                                         width,
                                                         areaViewHeight)];
        [self.view addSubview:_areaView];
    
    
    //アクセサリビュー作成
        UIView *areaPickerAccessoryView =
        [[UIView alloc] initWithFrame:CGRectMake(0,
                                             0,
                                             width,
          
                                                 AREA_PICKER_ACCESSORY_HEIGHT)];
    // 決定ボタン作成
        const float DONE_BUTTON_WEDTH = 80;
        UIButton *doneBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        doneBtn.frame = CGRectMake(width - DONE_BUTTON_WEDTH,
                               4,
                               DONE_BUTTON_WEDTH,
                               36);
        [doneBtn setTitle:@"Done" forState:UIControlStateNormal];
        [doneBtn addTarget:self
                action:@selector(performAreaDoneButtonAction)
          forControlEvents:UIControlEventTouchUpInside];
        [areaPickerAccessoryView addSubview:doneBtn];
        [_areaView addSubview:areaPickerAccessoryView];
    
    
    // ピッカー作成
        _datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,
                                                                AREA_PICKER_ACCESSORY_HEIGHT,
                                                                width,
                                                                AREA_PICKER_HEIGHT)];
        [_datePicker setDatePickerMode:UIDatePickerModeDate];
        [_datePicker addTarget:self action:@selector(vChanged:) forControlEvents:UIControlEventValueChanged];
        [_areaView addSubview:_datePicker];
}

- (void)hideAreaView{
        [UIView animateWithDuration:.20 animations:^{
            _areaView.transform = CGAffineTransformIdentity;
        }];
        _overlayView.frame = CGRectZero;
}

- (void)performAreaDoneButtonAction{
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy年MM月dd日 HH時mm分"];
        _label.text = [formatter stringFromDate:_datePicker.date];
        [self hideAreaView];
    }



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
        UITouch *touch = [[event allTouches] anyObject];
        if ( touch.view.tag == _label.tag )
        [self showAreaView:_label];
    }
    


- (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }


-(void)vChanged:(UIDatePicker*)datePicker{
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy年MM月dd日 HH時mm分"];
        _label.text = [formatter stringFromDate:datePicker.date];
    }

@end
