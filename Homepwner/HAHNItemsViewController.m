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

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

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

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [[[HAHNItemStore sharedStore] allItems] count];
}

- (UITableViewCell *)tabeView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath  *)indexPath
{
    // Create an instance of UITableViewCell, with default appearance
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                   reuseIdentifier:@"UITableViewCell"];
    
    // Set the text on the cell with the description of the item
    // that is at the nth index of items, where n = row this cell
    // will appear in on the tableview
    NSArray *items = [[HAHNItemStore sharedStore] allItems];
    HAHNItem *item = items[indexPath.row];
    
    cell.textLabel.text = [item description];
    
    return cell;
}


@end
