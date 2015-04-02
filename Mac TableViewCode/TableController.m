//
//  TableController.m
//  Mac TableViewCode
//
//  Created by Piotr Walkowski on 01.04.2015.
//  Copyright (c) 2015 Sofomo Sp. z o.o. All rights reserved.
//

#import "TableController.h"

@implementation TableController 

- (NSArray *)numbers {
    return @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];;
}

- (NSArray *)numberCodes {
    return @[@"One", @"Two", @"Three", @"Four", @"Five", @"Six", @"Seven", @"Eight", @"Nine", @"Ten"];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 10;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    if ([tableColumn.identifier isEqualToString:@"numbers"]) {
        return [self.numbers objectAtIndex:row];
    } else {
        return [self.numberCodes objectAtIndex:row];
    }
}

- (void)tableViewSelectionDidChange:(NSNotification *)notification {
    NSTableView *tableView = notification.object;
    NSLog(@"User has stopped at row %ld", (long)tableView.selectedRow);
}

/*
 - (void)tableView:(NSTableView *)tableView didClickedRow:(NSInteger)row {
    NSLog(@"%s", @"click");
}
*/

@end
