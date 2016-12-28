//
//  main.m
//  ex1-1-5
//
//  Created by 佐野浩代 on 2016/12/23.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "FavoriteProgrammingLanguage.h"


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
    
        NSArray<Account *> *accounts = @[[[Account alloc]initProfile:@"佐野":20:@"女性":@"日本語"],[[Account alloc]initProfile:@"佐野2":20:@"女性":@"日本語"]];
        for(Account *account in accounts){
            [account join];
        }
    }
    return 0;
}
