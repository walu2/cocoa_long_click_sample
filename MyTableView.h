//
//  MyTableView.h
//  LongClick
//
//  Created by Piotr Walkowski on 01.04.2015.
//  Copyright (c) 2015 Sofomo Sp. z o.o. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol ExtendedTableViewDelegate <NSObject>
- (void)tableView:(NSTableView *)tableView didClickedRow:(NSInteger)row;
@end

@interface MyTableView : NSTableView
    @property (nonatomic, weak) id<ExtendedTableViewDelegate> extendedDelegate;
@end
