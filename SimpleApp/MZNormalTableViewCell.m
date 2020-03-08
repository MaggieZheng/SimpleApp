//
//  MZTableViewCell.m
//  SimpleApp
//
//  Created by 郑梦真 on 2020/3/7.
//  Copyright © 2020 MaggieZ. All rights reserved.
//

#import "MZNormalTableViewCell.h"

@interface MZNormalTableViewCell ()

@property(nonatomic,strong,readwrite) UILabel *titleLable;
@property(nonatomic,strong,readwrite) UILabel *sourceLable;
@property(nonatomic,strong,readwrite) UILabel *commentLable;
@property(nonatomic,strong,readwrite) UILabel *timeLable;
@property(nonatomic,strong,readwrite) UIImageView *rightImageView; // 图片
@property(nonatomic,strong,readwrite) UIButton  *deleteButton; // 删除按钮


@end

@implementation MZNormalTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self.contentView addSubview:({
            self.titleLable = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 300, 50)];
            self.titleLable.font = [UIFont systemFontOfSize:16];
            self.titleLable.textColor = [UIColor blackColor];
            self.titleLable;
        })];
        [self.contentView addSubview:({
            self.sourceLable = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 50, 20)];
            self.sourceLable.font = [UIFont systemFontOfSize:12];
            self.sourceLable.textColor = [UIColor grayColor];
            self.sourceLable;
        })];
        [self.contentView addSubview:({
            self.commentLable = [[UILabel alloc] initWithFrame:CGRectMake(80, 80, 50, 20)];
//            self.commentLable.backgroundColor = [UIColor redColor];
            self.commentLable.font = [UIFont systemFontOfSize:12];
            self.commentLable.textColor = [UIColor grayColor];
            self.commentLable;
        })];
        [self.contentView addSubview:({
            self.timeLable = [[UILabel alloc] initWithFrame:CGRectMake(150, 80, 50, 20)];
            self.timeLable.font = [UIFont systemFontOfSize:12];
            self.timeLable.textColor = [UIColor grayColor];
            self.timeLable;
        })];
        [self.contentView addSubview:({
            self.rightImageView = [[UIImageView alloc] initWithFrame:CGRectMake(330, 15, 70, 70)];
            self.rightImageView.backgroundColor = [UIColor redColor];
            self.rightImageView.contentMode = UIViewContentModeScaleAspectFit;  // 展示原有比例
            self.rightImageView;
        })];
        [self.contentView addSubview:({
            self.deleteButton = [[UIButton alloc] initWithFrame:CGRectMake(290, 80, 30, 20)];
            self.deleteButton.backgroundColor = [UIColor blueColor];
            [self.deleteButton addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
            [self.deleteButton setTitle:@"X" forState:UIControlStateNormal];
            [self.deleteButton setTitle:@"V" forState:UIControlStateHighlighted];

            self.deleteButton;
        })];
    }
    return self;
}

// 点击按钮
-(void) clickBtn{
    NSLog(@"按钮点击！");
}

// 添加文字
-(void) layoutTableViewCell{
    self.titleLable.text = @"极客时间iOS开发";
    
    self.sourceLable.text = @"极客时间";
    [self.sourceLable sizeToFit];
    
    
    self.commentLable.text = @"1888评论";
    [self.commentLable sizeToFit];
    self.commentLable.frame = CGRectMake(self.sourceLable.frame.origin.x + self.sourceLable.frame.size.width + 15, self.commentLable.frame.origin.y, self.commentLable.frame.size.width, self.commentLable.frame.size.height);
    
    self.timeLable.text = @"三分钟前";
    [self.timeLable sizeToFit];
    self.timeLable.frame = CGRectMake(self.commentLable.frame.origin.x + self.commentLable.frame.size.width + 15, self.commentLable.frame.origin.y, self.timeLable.frame.size.width, self.timeLable.frame.size.height);
    
    self.rightImageView.image = [UIImage imageNamed:@"rightImage"];
}
@end
