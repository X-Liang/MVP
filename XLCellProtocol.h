//
//  XLCellProtocol.h
//  MVP
//
//  Created by X-Liang on 15/12/26.
//  Copyright © 2015年 X-Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@property XLBaseProtocol;

typedef void(^tapBlock)(NSIndexPath *indexPath);

@protocol XLCellProtocol <NSObject>

@optional

@end
