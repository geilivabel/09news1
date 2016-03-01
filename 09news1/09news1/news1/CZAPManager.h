//
//  CZAPManager.h
//  09news1
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZAPManager : NSObject
+(instancetype)shearManager;
//请求头部信息
-(void)requestHeadLineWithURL:(NSString *)url success:(void(^)(id))success
                        error:(void(^)(NSError *))error;
@end
