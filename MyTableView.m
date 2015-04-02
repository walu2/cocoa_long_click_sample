//
//  MyTableView.m
//  LongClick
//
//  Created by Piotr Walkowski on 01.04.2015.
//  Copyright (c) 2015 Sofomo Sp. z o.o. All rights reserved.
//

#import "MyTableView.h"

@implementation MyTableView

- (id) init {
    self.extendedDelegate = self;
    
    return 0;
}
- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)mouseDown:(NSEvent *)theEvent {
    
    NSPoint globalLocation = [theEvent locationInWindow];
    NSPoint localLocation = [self convertPoint:globalLocation fromView:nil];
    NSInteger clickedRow = [self rowAtPoint:localLocation];
    
    [self deselectAll:nil];
    [super mouseDown:theEvent];
    
    NSAlert *alert = [[NSAlert alloc] init];
    
    int nofSelected = [[self selectedRowIndexes] count];
    
    if(nofSelected == 1) {
        [alert setMessageText:@"One selected"];
        [alert runModal];
    }
    
    if(nofSelected > 1)
    {
        [alert setMessageText:@"Multiple seleted"];
        [alert runModal];
    }

        //[self.extendedDelegate tableView:self didClickedRow:clickedRow];
}

@end
