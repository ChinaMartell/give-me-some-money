//
//  UserEntity.h
//  give me some money
//
//  Created by shadow on 14-2-27.
//  Copyright (c) 2014年 shadow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface UserEntity : NSManagedObject

@property (nonatomic, retain) NSNumber * createDate;
@property (nonatomic, retain) NSString * nickName;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * token;
@property (nonatomic, retain) NSString * uid;

@end
