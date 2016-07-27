//
//  NETUtils.m
//  gank_mm
//
//  Created by 否命题 on 16/7/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "NETUtils.h"
#import "Reachability.h"

@implementation NETUtils

+(BOOL)isExitNetWork{
    BOOL isExitNetWork=false;
    Reachability *reachablity=[Reachability reachabilityWithHostName:@"www.baidu.com"];
    switch ([reachablity currentReachabilityStatus]) {
        case NotReachable: isExitNetWork = FALSE;
            break;
        case ReachableViaWWAN: isExitNetWork = TRUE;
            break;
        case ReachableViaWiFi: isExitNetWork = TRUE;
            break;
    }
    return isExitNetWork;
}
@end
