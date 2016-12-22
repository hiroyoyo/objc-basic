//
//  main.m
//  ex1-1-3
//
//  Created by 佐野浩代 on 2016/12/20.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //if文
    if(YES){
        NSLog(@"yes");
    }
    
    
    //if else文
    NSInteger a = 8;
    
    if(a < 5){
        NSLog(@"5より小さい");
    }else{
        NSLog(@"5より大きい");
    }
    

    //if else if 文
    NSInteger b = 2;
    
    if(b < 1){
        NSLog(@"0以下");
    }else if(b < 2){
        NSLog(@"1");
    }else{
        NSLog(@"2以上");
    }
    
    
    //三項演算子
    NSInteger c = 8;
   
    c<5 ? NSLog(@"5より小さい") : NSLog(@"5より大きい");
    
    
    //for文
    
    for(int d=0; d<5; d++){
        NSLog(@"%zd",d);
    }
    
    
    //高速列挙構文
    NSArray *lists = @[ @"45",@"35",@"5"];
    for (NSString *num in lists) {
        NSLog(@"%@",num);
    }
    
    
    //switch
    NSInteger num = 1;
    switch (num) {
        case 0:
            NSLog(@"0です");
            break;
        case 1:
            NSLog(@"1です");
            break;
            
        default:
            break;
    }
    
    return 0;
}
