//
//  FavoriteProgrammingLanguage.m
//  ex1-1-5
//
//  Created by 佐野浩代 on 2016/12/28.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FavoriteProgrammingLanguage.h"

@implementation FavoriteProgrammingLanguage

-(void)joinIntern{
    if ([_delegate respondsToSelector:@selector(canObj_c)]){
        [_delegate canObj_c];
    }

}

@end
