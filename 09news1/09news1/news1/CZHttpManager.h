//
//  CZHttpManager.h
//  09news1
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface CZHttpManager : AFHTTPSessionManager
+(instancetype)shareManager;

@end
