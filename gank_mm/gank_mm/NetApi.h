//
//  NetApi.h
//  gank_mm
//
//  Created by 否命题 on 16/7/27.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetApi : NSObject
/**
 *  获取Gank数据接口
 *
 *  @param type      数据类型：福利 | Android | iOS | 休息视频 | 拓展资源 | 前端 | all
 *  @param pageSize  请求个数
 *  @param pageIndex 第几页
 */
+(void)getGankDataWithType:(NSString *)type pageSize:(NSInteger)pageSize
                 pageIndex:(NSInteger)pageIndx success:(void (^)(NSDictionary *dict))
                 success failure:(void(^)(NSString *text))failue;
@end
