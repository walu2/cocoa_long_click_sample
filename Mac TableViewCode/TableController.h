//
//  TableController.h
//  Mac TableViewCode
//
//  Created by Piotr Walkowski on 01.04.2015.
//  Copyright (c) 2015 Sofomo Sp. z o.o. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTableView.h"

@interface TableController : NSObject <ExtendedTableViewDelegate, NSTableViewDataSource, NSTableViewDelegate>
@property (nonatomic, strong) NSArray *numbers;
@property (nonatomic, strong) NSArray *numberCodes;

@end