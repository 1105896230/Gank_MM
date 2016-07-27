//
//  GirlViewController.m
//  gank_mm
//
//  Created by 否命题 on 16/7/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "GirlViewController.h"
#import "NETUtils.h"
#import "NetApi.h"

static NSString *tagID=@"girl";
/**
 *  每页加载的大小
 */
static const NSInteger pageSize = 20;
@interface GirlViewController ()
@property(weak,nonatomic)UITableView *tableview;
@property(nonatomic,assign)NSInteger pageIndex;
@property(nonnull,strong)NSMutableArray *gank;
@end

@implementation GirlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    _tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    _tableview.delegate=self;
//    _tableview.dataSource=self;
//    [self.view addSubview:_tableview];
//    self.view.backgroundColor=[UIColor redColor];
    [self loadNetData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)loadNetData{
    if (![NETUtils isExitNetWork]) {
        NSLog(@"没有网络");
    }else{
        NSLog(@"有网络");
    }
    _pageIndex = 1;

    [NetApi getGankDataWithType:@"福利" pageSize:pageSize pageIndex:_pageIndex success:^(NSDictionary *dict){
      
    }failure:^(NSString *text) {
        NSLog(@"----loadNewDatas-失败----%@",text);
    }];
}

@end
