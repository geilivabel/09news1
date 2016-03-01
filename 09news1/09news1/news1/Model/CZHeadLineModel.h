//
//  CZHeadLineModel.h
//  09news1
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface CZHeadLineModel : NSObject
//图片路径
@property (nonatomic,copy)NSString *imgsrc;
//标题路径
@property (nonatomic,copy)NSString *title;
//对象方法
-(instancetype)initWithDict:(NSDictionary *)dict;
//类方法
+(instancetype)HeadLineDict:(NSDictionary *)dict;

//加载头条的数据
+(void)HeadLineDataWithURL:(NSString *)url success:(void(^)(NSArray *HeadLine))success;
@end
