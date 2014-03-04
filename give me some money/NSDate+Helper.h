//
//  NSDate+Helper.h
//  give me some money
//
//  Created by 谢导 on 14-2-23.
//  Copyright (c) 2014年 shadow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Helper)
- (NSDate *)beginningOfMonth;
- (NSDate *)endOfMonth;
+ (NSString *)stringFromDate:(NSDate *)date;
@end
