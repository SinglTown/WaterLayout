//
//  CBWaterFlowView.m
//  横向瀑布流
//
//  Created by 赵传保 on 2018/3/31.
//  Copyright © 2018年 赵传保. All rights reserved.
//

#import "CBWaterFlowView.h"
#import "CBWaterCollectionViewCell.h"
#import "SXLineLayout.h"
static NSString *collectionID = @"CBWaterCollectionViewCellID";

@interface CBWaterFlowView()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)UICollectionView *waterCollectionView;


@end


@implementation CBWaterFlowView

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
    SXLineLayout *layout = [[SXLineLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.minimumInteritemSpacing = 15;
    layout.sectionInset = UIEdgeInsetsMake(0, 22.5, 0, 22.5);
    self.waterCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) collectionViewLayout:layout];
    self.waterCollectionView.delegate = self;
    self.waterCollectionView.dataSource = self;
    self.waterCollectionView.backgroundColor = [UIColor whiteColor];
    self.waterCollectionView.showsVerticalScrollIndicator = NO;
    self.waterCollectionView.showsHorizontalScrollIndicator = NO;
    [self addSubview:self.waterCollectionView];
    
    [self.waterCollectionView registerNib:[UINib nibWithNibName:@"CBWaterCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:collectionID];
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
    CBWaterCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionID forIndexPath:indexPath];
    cell.backImageView.image = [UIImage imageNamed:@"QQ20180331-105123"];
    return cell;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.frame.size.width-45, self.frame.size.height);
}
@end
