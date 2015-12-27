//
//  XLChannelModel.h
//  MVP
//
//  Created by X-Liang on 15/12/26.
//  Copyright © 2015年 X-Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XLHeaderModel;

@interface XLChannelModel : NSObject

@property (nonatomic, strong) NSNumber *channelFloorSize;
@property (nonatomic, copy)   NSArray  *tempFloors;
@property (nonatomic, copy)   NSArray  *floors;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) BOOL code;
@property (nonatomic,strong) NSNumber *executeTime;
@property (nonatomic, strong) XLHeaderModel *head;

@end
