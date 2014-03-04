//
//  VoteEntity.h
//  give me some money
//
//  Created by shadow on 14-2-27.
//  Copyright (c) 2014年 shadow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface VoteEntity : NSManagedObject

@property (nonatomic, retain) NSString * vid;
@property (nonatomic, retain) NSString * cid;
@property (nonatomic, retain) NSNumber * result;
@property (nonatomic, retain) NSNumber * createDate;

@end
