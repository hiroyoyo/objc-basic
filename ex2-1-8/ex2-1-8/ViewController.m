//
//  ViewController.m
//  ex2-1-8
//
//  Created by 佐野浩代 on 2017/01/13.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"
#import "OverlayView.h"
@interface ViewController ()

@property(nonatomic, strong) UIView *areaView;
@property(nonatomic, strong) UIPickerView *areaPickerView;
@property(nonatomic, strong) OverlayView *overlayView;


@property(nonatomic, strong) NSArray *areaList;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end


@implementation ViewController


- (void)viewDidLoad{
    [super viewDidLoad];
    
    _label.userInteractionEnabled = YES;
    _label.tag = 100;
    _areaList = @[
                  @[@"1", @"70%カカオチョコレート"],
                  @[@"2", @"80%カカオチョコレート"],
                  @[@"3", @"99%カカオチョコレート"],
                  @[@"4", @"シーソルトチョコレート"],
                  @[@"5", @"ホワイトチョコレート"],
                  @[@"6", @"ストロベリーチョコレート"],
                  @[@"7", @"キャラメルチョコレート"],
                  ];
    
    
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


- (void)hideAreaView{
    [UIView animateWithDuration:.20 animations:^{
        _areaView.transform = CGAffineTransformIdentity;
    }];
    _overlayView.frame = CGRectZero;
}


static const float AREA_PICKER_ACCESSORY_HEIGHT = 44;
static const float AREA_PICKER_HEIGHT = 216;


- (void)buildAreaPickerView{
    float height = self.view.bounds.size.height;
    float width = self.view.bounds.size.width;
    
    // 1. アクセサリビューとピッカービューを乗せるビューの作成
    float areaViewHeight = AREA_PICKER_ACCESSORY_HEIGHT + AREA_PICKER_HEIGHT;
    _areaView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                         height,
                                                         width,
                                                         areaViewHeight)];
    [self.view addSubview:_areaView];
    
    // 2-1. アクセサリビュー作成
    UIView *areaPickerAccessoryView =
    [[UIView alloc] initWithFrame:CGRectMake(0,
                                             0,
                                             width,
                                             AREA_PICKER_ACCESSORY_HEIGHT)];
    areaPickerAccessoryView.backgroundColor = [UIColor whiteColor];
    
    // 2-2. 決定ボタン作成
    const float DONE_BUTTON_WEDTH = 80;
    UIButton *doneBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    doneBtn.frame = CGRectMake(width - DONE_BUTTON_WEDTH,
                               4,
                               DONE_BUTTON_WEDTH,
                               36);
    doneBtn.backgroundColor = [UIColor whiteColor];
    [doneBtn setTitle:@"Done" forState:UIControlStateNormal];
    [doneBtn addTarget:self
                action:@selector(performAreaDoneButtonAction)
      forControlEvents:UIControlEventTouchUpInside];
    [areaPickerAccessoryView addSubview:doneBtn];
    [_areaView addSubview:areaPickerAccessoryView];
    
    // 3. ピッカー作成
    _areaPickerView =
    [[UIPickerView alloc] initWithFrame:CGRectMake(0,
                                                   AREA_PICKER_ACCESSORY_HEIGHT,
                                                   width,
                                                   AREA_PICKER_HEIGHT)];
    _areaPickerView.backgroundColor = [UIColor whiteColor];
    _areaPickerView.delegate = self;
    _areaPickerView.dataSource = self;
    [_areaPickerView selectRow:2 inComponent:0 animated:NO]; // 初期値設定
    [_areaView addSubview:_areaPickerView];
}


- (void)performAreaDoneButtonAction{
    NSInteger row = [_areaPickerView selectedRowInComponent:0];
    NSLog(@"areaCode:%@, areaName:%@", _areaList[row][0], _areaList[row][1]);
    _label.text = _areaList[row][1];
    [self hideAreaView];
}


// UIPickerViewDataSource, UIPickerViewDelegate delegate
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return _areaList.count;
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return _areaList[row][1];
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    if ( touch.view.tag == _label.tag )
        [self showAreaView:_label];
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _label.text = _areaList[row][1];
}
@end
