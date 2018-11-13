//
//  CBWaterSmallView.m
//  横向瀑布流
//
//  Created by 赵传保 on 2018/3/31.
//  Copyright © 2018年 赵传保. All rights reserved.
//

#import "CBWaterSmallView.h"
#import "CBWaterActivityCell.h"
static NSString *smallCollectionID = @"CBWaterActivityCellID";

@interface CBWaterSmallView()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)UICollectionView *waterCollectionView;


@end


@implementation CBWaterSmallView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self allViews];
    }
    return self;
}
-(void)allViews
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.minimumInteritemSpacing = 6;
    self.waterCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) collectionViewLayout:layout];
    self.waterCollectionView.delegate = self;
    self.waterCollectionView.dataSource = self;
    self.waterCollectionView.backgroundColor = [UIColor whiteColor];
    self.waterCollectionView.contentInset = UIEdgeInsetsMake(0, 12, 0, 12);
    self.waterCollectionView.showsVerticalScrollIndicator = NO;
    self.waterCollectionView.showsHorizontalScrollIndicator = NO;
    [self addSubview:self.waterCollectionView];
    
    [self.waterCollectionView registerNib:[UINib nibWithNibName:@"CBWaterActivityCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:smallCollectionID];
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CBWaterActivityCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:smallCollectionID forIndexPath:indexPath];
    cell.backImageView.image = [UIImage imageNamed:@"QQ20180331-105123"];
    cell.topTitleLabel.text = @"北京";
    cell.bottomLabel.text = @"12个活动  12场赛事";
    return cell;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(105, self.frame.size.height);
}
@end
