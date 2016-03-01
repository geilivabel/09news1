//
//  CZAPManager.m
//  09news1
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CZAPManager.h"
#import "CZHttpManager.h"
@implementation CZAPManager
+(instancetype)shearManager
{
    static dispatch_once_t onceToke;
    static id instance;
    dispatch_once(&onceToke, ^{
        instance=[[self alloc]init];
    });
    return instance;
}

-(void)requestHeadLineWithURL:(NSString *)url success:(void(^)(id))success
                        error:(void(^)(NSError *))error
{
    [[CZHttpManager shareManager]GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        success(error);
    }];
}
@end
