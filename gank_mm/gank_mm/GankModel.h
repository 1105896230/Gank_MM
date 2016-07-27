//
//  GankModel.h
//  gank_mm
//
//  Created by 否命题 on 16/7/27.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GankModel : NSObject
//id
@property(nonatomic,copy)NSString *id;
//资源
@property(nonatomic,copy)NSString *source;
//谁发布
@property(nonatomic,copy)NSString *who;
//发布时间
@property(nonatomic,copy)NSString *publishedAt;
/**
 *  used;
 */
@property (nonatomic, assign) BOOL used;
/**
 *  创建时间
 */
@property (nonatomic, copy) NSString *createdAt;
/**
 *  类型
 */
@property (nonatomic, copy) NSString *type;
/**
 *  描述
 */
@property (nonatomic, copy) NSString *desc;
/**
 *  地址Url
 */
@property (nonatomic, copy) NSString *url;

/**
 *  额外的属性：这个是否收藏了
 */
@property(nonatomic,assign,getter=isCollect)BOOL collect;

@end
