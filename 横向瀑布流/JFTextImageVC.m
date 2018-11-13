//
//  JFTextImageVC.m
//  横向瀑布流
//
//  Created by 赵传保 on 2018/4/4.
//  Copyright © 2018年 赵传保. All rights reserved.
//

#import "JFTextImageVC.h"
#import <YYKit.h>

@interface JFTextImageVC ()
@property (nonatomic,strong)YYTextView *textView;

@end

@implementation JFTextImageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    self.textView = [[YYTextView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.textView.editable = NO;
    self.textView.userInteractionEnabled = YES;
    self.textView.textVerticalAlignment = YYTextVerticalAlignmentTop;
    self.textView.size = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    
    NSMutableAttributedString *contentText = [[NSMutableAttributedString alloc] init];
    UIFont *font = [UIFont systemFontOfSize:20];
    
    
    YYImage *image = [YYImage imageNamed:@"QQ20180331-105123.png"];
//    image.preloadAllAnimatedImageFrames = YES;
    
    NSString *firstText = @"我自己的答案是“a.变成了大富翁。”但是，我知道我自己的差距，一种小富即安，沾沾自喜，注定了我工作的变动和不长久，没有任何的积累，人到34岁，经历太多的诱惑，总是给自己太多可以选择退缩的理由，肩上没有重担，没有责任感，过着漫无目的，没有计划的生活。";
    NSAttributedString *firstAttributeText = [[NSAttributedString alloc] initWithString:firstText];
    [contentText appendAttributedString:firstAttributeText];
    YYAnimatedImageView *imageView = [[YYAnimatedImageView alloc] init];
    imageView.image = image;
    imageView.frame = CGRectMake(0, 0, self.textView.width-30, (self.textView.width-30)/image.size.width*image.size.height);
    NSMutableAttributedString *attachText = [NSMutableAttributedString attachmentStringWithContent:imageView contentMode:UIViewContentModeScaleAspectFit attachmentSize:imageView.size alignToFont:font alignment:YYTextVerticalAlignmentCenter];
    [contentText appendAttributedString:attachText];
    
    //添加文本+图片
    NSString *secondText = @"我自己的答案是“a.变成了大富翁。”但是，我知道我自己的差距，一种小富即安，沾沾自喜，注定了我工作的变动和不长久，没有任何的积累，人到34岁，经历太多的诱惑，总是给自己太多可以选择退缩的理由，肩上没有重担，没有责任感，过着漫无目的，没有计划的生活。";
    NSAttributedString *secondAttributeText = [[NSAttributedString alloc] initWithString:secondText];
    [contentText appendAttributedString:secondAttributeText];
    {
        YYAnimatedImageView *imageView2 = [[YYAnimatedImageView alloc] initWithImage:image];
        imageView2.image = image;
        imageView2.frame = CGRectMake(0, 0, self.textView.width - 10, self.textView.width/image.size.width*image.size.height);
        NSMutableAttributedString *attachText2 = [NSMutableAttributedString attachmentStringWithContent:imageView2 contentMode:UIViewContentModeScaleAspectFit attachmentSize:imageView2.size alignToFont:font alignment:YYTextVerticalAlignmentCenter];
        [contentText appendAttributedString:attachText2];
    }
    [contentText setFont:font];
    self.textView.attributedText = contentText;
    
    [self.view addSubview:self.textView];
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
