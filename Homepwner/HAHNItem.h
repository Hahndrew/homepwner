//
//  HAHNItem.h
//  Homepwner
//
//  Created by Andrew Hahn on 4/23/15.
//  Copyright (c) 2015 Andrew Hahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HAHNItem : NSObject

+ (instancetype)randomItem;

// Designated initializer for HAHNItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

@property (nonatomic, strong) HAHNItem *containedItem;
@property (nonatomic, weak) HAHNItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@end
