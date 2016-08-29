//
//  jsonModel.m
//  mjextJson
//
//  Created by apple on 16/8/23.
//  Copyright © 2016年 zhanyan. All rights reserved.
//

#import "jsonModel.h"

@implementation jsonModel

//实现这个方法的目的：告诉MJExtension框架statuses和ads数组里面装的是什么模型（是第三方ESJ实现的代码（WINDOW->ESJFORMAT->INPUT），不是MJ）
+ (NSDictionary *)objectClassInArray{
    return @{@"data" : [Data class]};
}
@end
@implementation Data

@end
