//
//  HAHNItemStore.h
//  Homepwner
//
//  Created by Andrew Hahn on 5/15/15.
//  Copyright (c) 2015 Andrew Hahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HAHNItem;

@interface HAHNItemStore : NSObject

@property (nonatomic, readonly, copy) NSArray *allItems;

+ (instancetype)sharedStore;
- (HAHNItem *)createItem;

@end
