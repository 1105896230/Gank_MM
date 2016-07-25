//
//  BaseUiTabController.m
//  gank_mm
//
//  Created by 否命题 on 16/7/24.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "BaseUiTabController.h"
#import "BaseNavigationController.h"
#import "GankViewController.h"
#import "GirlViewController.h"
@interface BaseUiTabController ()

@end

@implementation BaseUiTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildView];
}
-(void)addChildView{
    GirlViewController *girlController=[[GirlViewController alloc]init];
    girlController.tabBarItem.title=@"美女";
    girlController.tabBarItem.image=[UIImage imageNamed:@"tabBar_girls"];
    girlController.tabBarItem.selectedImage=[[UIImage imageNamed:@"tabBar_girls_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:girlController];
    
    
    GankViewController *gankController=[[GankViewController alloc]init];
    gankController.tabBarItem.title=@"干货";
    gankController.tabBarItem.image=[UIImage imageNamed:@"tabBar_gank"];
    gankController.tabBarItem.selectedImage=[[UIImage imageNamed:@"tabBar_gank_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:gankController];

}



@end
