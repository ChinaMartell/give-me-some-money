//
//  GroupEntity.h
//  give me some money
//
//  Created by shadow on 14-2-27.
//  Copyright (c) 2014年 shadow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface GroupEntity : NSManagedObject

@property (nonatomic, retain) NSString * gid;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * creator;
@property (nonatomic, retain) NSString * nickName;
@property (nonatomic, retain) NSNumber * createDate;

@end
