//
//  NSMutableArray+Vendor.m
//  give me some money
//
//  Created by shadow on 14-2-27.
//  Copyright (c) 2014年 shadow. All rights reserved.
//

#import "NSMutableArray+Vendor.h"

@implementation NSMutableArray (Vendor)

+(Class)class{
    return [ss class];
}
@end

@implementation ss

-(void)addObject:(id)anObject{
    NSLog(@"fff");
}

@end