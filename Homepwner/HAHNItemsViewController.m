//
//  HAHNItemsViewController.m
//  Homepwner
//
//  Created by Andrew Hahn on 4/23/15.
//  Copyright (c) 2015 Andrew Hahn. All rights reserved.
//

#import "HAHNItemsViewController.h"
#import "HAHNItemStore.h"
#import "HAHNItem.h"

@implementation HAHNItemsViewController

- (instancetype)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[HAHNItemStore sharedStore] createItem];
        }
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [[[HAHNItemStore sharedStore] allItems] count];
}


@end
