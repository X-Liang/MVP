//
//  UITableView+XLTableViewCategory.m
//  MVP
//
//  Created by X-Liang on 15/12/26.
//  Copyright © 2015年 X-Liang. All rights reserved.
//

#import "UITableView+XLTableViewCategory.h"

@implementation UITableView (XLTableViewCategory)

- (void)registerCellAndHeaderFooter {
    NSArray *cellIdentifier = @[
                                @"FocusCell", @"SingleCell", @"HeaderCell", @"CategoryCell",
                                @"MarginCell", @"NormalCell"
                                ];
    for (NSString *cellID in cellIdentifier) {
        [self registerClass:NSClassFromString(cellID) forCellReuseIdentifier:cellID];
    }
    
    NSArray *headerIdentifier = @[
                                  @"CategoryHeaderCell"
                                  ];
    for (NSString *headerID in headerIdentifier) {
        [self registerClass:NSClassFromString(headerID) forHeaderFooterViewReuseIdentifier:headerID];
    }
}

@end
