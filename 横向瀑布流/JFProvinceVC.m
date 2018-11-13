//
//  JFProvinceVC.m
//  横向瀑布流
//
//  Created by 赵传保 on 2018/4/4.
//  Copyright © 2018年 赵传保. All rights reserved.
//

#import "JFProvinceVC.h"
#import "JFCityVC.h"
@interface JFProvinceVC ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *provinceTableView;
@property (nonatomic,strong)NSMutableArray *allValuesArr;

@end

@implementation JFProvinceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"area" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    self.allValuesArr = [self sortAllDataWithDic:dic].mutableCopy;
    NSLog(@"%@",self.allValuesArr);
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.allValuesArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell.backgroundColor = [UIColor blackColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    NSDictionary *proviceDic = self.allValuesArr[indexPath.row];
    NSString *provice = [proviceDic allKeys][0];
    cell.textLabel.text = provice;
    cell.textLabel.textColor = [UIColor whiteColor];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *proviceDic = self.allValuesArr[indexPath.row];
    NSDictionary *cityDic = [proviceDic allValues][0];
    NSArray *cityArr = [self sortAllDataWithDic:cityDic];
    NSMutableArray *cityDataArr = @[].mutableCopy;
    for (NSDictionary *city in cityArr) {
        NSString *key = [city allKeys][0];
        [cityDataArr addObject:key];
    }
    NSLog(@"%@",cityDataArr);
    
    JFCityVC *cityVC = [[JFCityVC alloc] init];
    cityVC.cityArray = cityDataArr.copy;
    [self.navigationController pushViewController:cityVC animated:YES];
}
//排序
-(NSArray *)sortAllDataWithDic:(NSDictionary *)dic
{
    //按key排序
    NSArray *allkeys = [dic allKeys];
    NSArray *sortKeyArr = [allkeys sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        obj1 = [obj1 lowercaseString];
        obj2 = [obj2 lowercaseString];
        //排序操作
        NSComparisonResult resuest = [obj1 compare:obj2];
        return resuest;
    }];
    NSMutableArray *allvaluesArr = @[].mutableCopy;
    for (NSString *key in sortKeyArr) {
        NSString *value = [dic objectForKey:key];
        [allvaluesArr addObject:value];
    }
    return allvaluesArr.copy;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
