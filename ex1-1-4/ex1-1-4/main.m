//
//  main.m
//  ex1-1-4
//
//  Created by 佐野浩代 on 2016/12/21.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSArray<Account *> *accounts = @[[[Account alloc]initProfile:@"今田" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"中村" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"林" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"福本" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"本間" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"月岡" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"宮島" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"佐藤" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"望月" :21 :@"女性" :@"日本語"],
                                         [[Account alloc]initProfile:@"高島" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"松本" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"吉田" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"毎澤" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"渡辺" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"山崎" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"佐野" :21 :@"女性" :@"日本語"],
                                         [[Account alloc]initProfile:@"冨樫" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"多田" :21 :@"女性" :@"日本語"],
                                         [[Account alloc]initProfile:@"小関" :21 :@"女性" :@"日本語"],
                                         [[Account alloc]initProfile:@"山室" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"大平" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"佐藤" :21 :@"男性" :@"日本語"],
                                         [[Account alloc]initProfile:@"藤井" :21 :@"男性" :@"日本語"]
                                         ];
        for(Account *account in accounts){
            [account print];
        }
    }
    return 0;
}
