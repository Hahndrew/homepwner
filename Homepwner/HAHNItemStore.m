//
//  HAHNItemStore.m
//  Homepwner
//
//  Created by Andrew Hahn on 5/15/15.
//  Copyright (c) 2015 Andrew Hahn. All rights reserved.
//

#import "HAHNItemStore.h"
#import "HAHNItem.h"

@interface HAHNItemStore ()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation HAHNItemStore

+ (instancetype)sharedStore
{
    static HAHNItemStore *sharedStore;
    
    // Do I need to create a sharedStore
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

// If a programmer calls [[HAHNItemStore alloc] init], let him
// know the erorr of his ways
- (instancetype)init
{
    [NSException raise:@"Singleton"
                format:@"Use + [HAHNItemStore sharedStore]"];
    
    return nil;
}

// The real (secret) initializer
- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

// Override the getter for allItems to return a copy of privateItems
- (NSArray *)allItems
{
    return [self.privateItems copy];
}

- (HAHNItem *)createItem
{
    HAHNItem *item = [HAHNItem randomItem];
    
    [self.privateItems addObject:item];
    
    return item;
}



@end
