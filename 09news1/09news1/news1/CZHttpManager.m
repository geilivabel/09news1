//
//  CZHttpManager.m
//  09news1
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CZHttpManager.h"
@implementation CZHttpManager

+(instancetype)shareManager
{
    static dispatch_once_t onceToke;
    static CZHttpManager *instance;
    dispatch_once(&onceToke, ^{
        instance=[[self alloc]initWithBaseURL:[NSURL URLWithString:@"http://c.m.163.com/nc/"] sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    });
    return instance;
}
@end
