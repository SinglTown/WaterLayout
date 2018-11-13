//
//  CBWaterActivityCell.h
//  横向瀑布流
//
//  Created by 赵传保 on 2018/3/31.
//  Copyright © 2018年 赵传保. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBWaterActivityCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *backImageView;
@property (strong, nonatomic) IBOutlet UILabel *topTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *bottomLabel;

@end
