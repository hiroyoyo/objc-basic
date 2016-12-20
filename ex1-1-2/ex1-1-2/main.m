//
//  main.m
//  ex1-1-2
//
//  Created by 佐野浩代 on 2016/12/20.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSArray *fruits = @[ @"strawberry",@"orange",@"apple"];
    
    NSDictionary *abc = @{   @"key1":@"Apple",
                             @"key2":@"Ball",
                             @"key3":@"Cat",
                             @"key4":@"Drive"};
    
    
    
    NSLog(@"%@" , fruits);
    
    NSLog(@"%@", abc);
    
    return 0;
}

