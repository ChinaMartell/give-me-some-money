//
//  ConsumeApplicationEntity.h
//  give me some money
//
//  Created by shadow on 14-2-27.
//  Copyright (c) 2014年 shadow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ConsumeApplicationEntity : NSManagedObject

@property (nonatomic, retain) NSString * cid;
@property (nonatomic, retain) NSString * creator;
@property (nonatomic, retain) NSNumber * sum;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * createDate;
@property (nonatomic, retain) NSString * gid;

@end
