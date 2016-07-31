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
#import "GankModel.h"
#import "MJExtension.h"
#import "MyGirlCell.h"
static NSString *tagID=@"girl";
/**
 *  每页加载的大小
 */
static const NSInteger pageSize = 20;
@interface GirlViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic)UITableView *tableview;
@property(nonatomic,assign)NSInteger pageIndex;
@property(nonnull,strong)NSMutableArray *gank;
@end

@implementation GirlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableview=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableview.delegate=self;
    _tableview.dataSource=self;
    //注册
    [self.tableview registerNib:[UINib nibWithNibName:NSStringFromClass([MyGirlCell class]) bundle:nil] forCellReuseIdentifier:tagID];
    
    [self.view addSubview:_tableview];
    self.view.backgroundColor=[UIColor redColor];
    [self loadNetData];
}
//获取每组元素的个数，必须要要实现
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
//设置组数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyGirlCell* cell=[_tableview dequeueReusableCellWithIdentifier:tagID];
    
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)loadNetData{
    if (![NETUtils isExitNetWork]) {
        NSLog(@"没有网络");
    }else{
        
    if (_pageIndex==0) {
         _pageIndex = 1;
    }
    [NetApi getGankDataWithType:@"福利" pageSize:pageSize pageIndex:_pageIndex success:^(NSDictionary *dict){
        _pageIndex+=1;
//        json转模型
        self.gank=[GankModel mj_objectArrayWithKeyValuesArray:dict[@"results"]];
    }failure:^(NSString *text) {
        NSLog(@"----loadNewDatas-失败----%@",text);
    }];
    }
    
}

@end
