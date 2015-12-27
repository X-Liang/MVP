//
//  XLChannelModel.m
//  MVP
//
//  Created by X-Liang on 15/12/26.
//  Copyright © 2015年 X-Liang. All rights reserved.
//

#import "XLChannelModel.h"

NSString *const ChannelPatternFocus = @"Focus";         // 对应"最热"的模型
NSString *const ChannelPatternSingle = @"SingleGoods";  // 对应"一个商品"的模型
NSString *const ChannelPatternNormal = @"NormalFloor";  // 对应"普通"的模型
NSString *const ChannelPatternCategory = @"Category";   // 

@implementation XLChannelModel

// 将网络中的某个字段与模型中的某个不是同名的属性做映射
+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{
             @"tempFloors" : @"floors"      // 模型中的属性 : 数据字段
             };
}

- (void)mj_objectDidFinishConvertingToKeyValues {
    
}

#pragma mark - Private Method
- (NSString *)getModelClassStrFromPattern:(NSString *)pattern {
    if ([pattern isEqualToString:ChannelPatternFocus]) {
        return @"FloorFocusModel";
    }
    if ([pattern isEqualToString:ChannelPatternNormal]) {
        return @"NormalModel";
    }
    if ([pattern isEqualToString:ChannelPatternSingle]) {
        return @"SingleModel";
    }
    if ([pattern isEqualToString:ChannelPatternCategory]) {
        return @"CategoryModel";
    }
    return nil;
}

@end
