//
//  CZHeadLineModel.m
//  09news1
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CZHeadLineModel.h"
#import "CZAPManager.h"
@implementation CZHeadLineModel
//对象方法
-(instancetype)initWithDict:(NSDictionary *)dict
{
    if (self=[super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
//类方法
+(instancetype)HeadLineDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

//加载头条的数据
+(void)HeadLineDataWithURL:(NSString *)url success:(void (^)(NSArray *))success
{
    [[CZAPManager shearManager]requestHeadLineWithURL:url success:^(NSDictionary *responesobjct) {
        //取出元素
        NSString *key=responesobjct.keyEnumerator.nextObject;
        //取出数据数组
        NSArray *data=responesobjct[key];
        //存储到可变数组
        NSMutableArray *dataM=[NSMutableArray array];
        [data enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [dataM addObject:[CZHeadLineModel HeadLineDict:obj]];
        }];
        success(dataM.copy);
        
    } error:^(NSError *errorinfo) {
        success(nil);
    }];
}
@end
