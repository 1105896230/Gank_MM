//
//  NetApi.m
//  gank_mm
//
//  Created by 否命题 on 16/7/27.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "NetApi.h"
#import "AFNetworking.h"

@implementation NetApi

+(void)getGankDataWithType:(NSString *)type pageSize:(NSInteger)pageSize pageIndex:(NSInteger)pageIndex success:(void (^)(NSDictionary *))success failure:(void (^)(NSString *))failure
{
    //获取网络数据
    NSString *url = [NSString stringWithFormat:@"http://gank.io/api/data/%@/%zd/%zd",type,pageSize,pageIndex];
    url = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"----url----%@",url);
    
    [[AFHTTPSessionManager manager] GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"---success---%@",responseObject);
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(@"失败");
    }];
    
    
}
@end
