//
//  Account.h
//  ex1-1-5
//
//  Created by 佐野浩代 on 2016/12/21.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#ifndef Account_h
#define Account_h
#import <Foundation/Foundation.h>
#import "FavoriteProgrammingLanguageDelegate.h"


@interface Account : NSObject<FavoriteProgrammingLanguageDelegate>

@property(nonatomic,copy) NSString *name;
@property(nonatomic) NSInteger age;
@property(nonatomic,copy) NSString *sex;
@property(nonatomic,copy) NSString *language;

-(id)initProfile :(NSString*)name :(NSInteger)age :(NSString*)sex :(NSString*)language;
-(void) print;
-(void) canObj_c;
-(void) join;


@end

#endif /* Account_h */
