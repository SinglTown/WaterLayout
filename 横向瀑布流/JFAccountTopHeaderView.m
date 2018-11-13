//
//  JFAccountTopHeaderView.m
//  横向瀑布流
//
//  Created by 赵传保 on 2018/3/31.
//  Copyright © 2018年 赵传保. All rights reserved.
//

#import "JFAccountTopHeaderView.h"
#import <AVFoundation/AVFoundation.h>
@interface JFAccountTopHeaderView()

@property (nonatomic,strong)AVPlayer *player;

@property (strong, nonatomic) IBOutlet UIButton *avatarBtn;
@property (strong, nonatomic) IBOutlet UIButton *nameMarkBtn;
@property (strong, nonatomic) IBOutlet UIButton *tagBtn;
@property (strong, nonatomic) IBOutlet UIButton *groupBtn;
@property (strong, nonatomic) IBOutlet UIButton *myFoucusBtn;
@property (strong, nonatomic) IBOutlet UIButton *myFansBtn;

@property (nonatomic,strong)UILabel *foucusNumLabel;
@property (nonatomic,strong)UILabel *foucusBottomLabel;
@property (nonatomic,strong)UILabel *fansNumLabel;
@property (nonatomic,strong)UILabel *fansBottomLabel;



@end

@implementation JFAccountTopHeaderView

+(JFAccountTopHeaderView *)initHeaderView
{
    JFAccountTopHeaderView *headerView = [[UINib nibWithNibName:@"JFAccountTopHeaderView" bundle:[NSBundle mainBundle]] instantiateWithOwner:self options:nil].lastObject;
    return headerView;
}
-(UILabel *)foucusNumLabel
{
    if (!_foucusNumLabel) {
        _foucusNumLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 23)];
        _foucusNumLabel.textColor = [UIColor whiteColor];
        _foucusNumLabel.textAlignment = NSTextAlignmentCenter;
        _foucusNumLabel.font = [UIFont systemFontOfSize:18];
        _foucusNumLabel.text = @"22";
    }
    return _foucusNumLabel;
}
-(UILabel *)foucusBottomLabel
{
    if (!_foucusBottomLabel) {
        _foucusBottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 23, 80, 17)];
        _foucusBottomLabel.textColor = [UIColor whiteColor];
        _foucusBottomLabel.textAlignment = NSTextAlignmentCenter;
        _foucusBottomLabel.font = [UIFont systemFontOfSize:12];
        _foucusBottomLabel.text = @"关注";
    }
    return _foucusBottomLabel;
}
-(UILabel *)fansNumLabel
{
    if (!_fansNumLabel) {
        _fansNumLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 23)];
        _fansNumLabel.textColor = [UIColor whiteColor];
        _fansNumLabel.textAlignment = NSTextAlignmentCenter;
        _fansNumLabel.font = [UIFont systemFontOfSize:18];
        _fansNumLabel.text = @"66";
    }
    return _fansNumLabel;
}
-(UILabel *)fansBottomLabel
{
    if (!_fansBottomLabel) {
        _fansBottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 23, 80, 17)];
        _fansBottomLabel.textColor = [UIColor whiteColor];
        _fansBottomLabel.textAlignment = NSTextAlignmentCenter;
        _fansBottomLabel.font = [UIFont systemFontOfSize:12];
        _fansBottomLabel.text = @"粉丝";
    }
    return _fansBottomLabel;
}
-(void)awakeFromNib
{
    [super awakeFromNib];
    NSLog(@"加载nib完成");
    
    [self.myFoucusBtn addSubview:self.foucusNumLabel];
    [self.myFoucusBtn addSubview:self.foucusBottomLabel];
    [self.myFansBtn addSubview:self.fansNumLabel];
    [self.myFansBtn addSubview:self.fansBottomLabel];
    
}

- (IBAction)avatarBtnAction:(id)sender {
}
- (IBAction)nameMarkBtnAction:(id)sender {
}
- (IBAction)tagBtnAction:(id)sender {
}
- (IBAction)groupBtnAction:(id)sender {
}
- (IBAction)goFocusAction:(id)sender {
}
- (IBAction)goMyFansAction:(id)sender {
}


@end
