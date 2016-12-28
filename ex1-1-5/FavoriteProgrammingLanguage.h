//
//  FavoriteProgrammingLanguage.h
//  ex1-1-5
//
//  Created by 佐野浩代 on 2016/12/28.
//  Copyright © 2016年 佐野浩代. All rights reserved.
//

#ifndef FavoriteProgrammingLanguage_h
#define FavoriteProgrammingLanguage_h
#import "FavoriteProgrammingLanguageDelegate.h"


@interface FavoriteProgrammingLanguage : NSObject
@property (nonatomic , weak)id<FavoriteProgrammingLanguageDelegate>delegate;

-(void)joinIntern;


@end

#endif /* FavoriteProgrammingLanguage_h */
