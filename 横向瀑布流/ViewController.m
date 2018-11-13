//
//  ViewController.m
//  横向瀑布流
//
//  Created by 赵传保 on 2018/3/31.
//  Copyright © 2018年 赵传保. All rights reserved.
//

#import "ViewController.h"
#import "CBWaterFlowView.h"
#import "CBWaterSmallView.h"
#import "JFAccountTopHeaderView.h"
#import "JFProvinceVC.h"
#import "JFTextImageVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CBWaterFlowView *waterView = [[CBWaterFlowView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 156)];
    [self.view addSubview:waterView];
    
    CBWaterSmallView *smallWaterView = [[CBWaterSmallView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 74)];
    [self.view addSubview:smallWaterView];
    
//    JFAccountTopHeaderView *headerView = [JFAccountTopHeaderView initHeaderView];
//    headerView.frame = CGRectMake(0, 0, self.view.frame.size.width, 281);
//    [self.view addSubview:headerView];
    
    
}

- (IBAction)goAction:(id)sender {
    
//    JFProvinceVC *provinceVC = [[JFProvinceVC alloc] init];
//    [self.navigationController pushViewController:provinceVC animated:YES];
    
    
    JFTextImageVC *provinceVC = [[JFTextImageVC alloc] init];
    [self.navigationController pushViewController:provinceVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
