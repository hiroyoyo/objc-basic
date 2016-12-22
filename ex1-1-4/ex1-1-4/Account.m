//
//  Account.m
//  ex1-1-4
//
//  Created by 佐野浩代 on 2016/12/21.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
@implementation Account


-(id)initProfile :(NSString*)name :(NSInteger)age :(NSString*)sex :(NSString*)language{
    if(self = [super init]){
            self.name = name;
            self.age = age;
            self.sex = sex;
            self.language = language;
        }
        return self;
    }

-(void) print{
    if([_sex isEqual: @"男性"]){
        NSLog(@"%@君は%@が得意な%zd歳です。",_name,_language,_age);
    }else{
        NSLog(@"%@さんは%@が得意な%zd歳です。",_name,_language,_age);
    }
}
@end
