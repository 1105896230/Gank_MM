//
//  MyProgress.m
//  gank_mm
//
//  Created by 否命题 on 16/7/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MyProgress.h"
#import "MBProgressHUD.h"
@implementation MyProgress
+(void)showToast:(NSString *)message{
    UIView *view= [[UIApplication sharedApplication].windows lastObject];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hide:YES afterDelay:0.7];
}
@end
