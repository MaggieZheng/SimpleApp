//
//  ZMZRecommandViewController.m
//  SimpleApp
//
//  Created by 郑梦真 on 2020/2/27.
//  Copyright © 2020 MaggieZ. All rights reserved.
//

#import "ZMZRecommandViewController.h"

@interface ZMZRecommandViewController () <UIScrollViewDelegate>

@end

@implementation ZMZRecommandViewController

- (instancetype) init{
    self = [super init];
    if(self){
        self.tabBarItem.title = @"推荐";
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar_like"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_like_selected"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.backgroundColor = [UIColor grayColor];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width*5, self.view.bounds.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.delegate = self;
    
    NSArray *colorArray = @[[UIColor redColor],[UIColor blackColor],[UIColor yellowColor],[UIColor greenColor],[UIColor blueColor]];
    // 翻页 下滑一页
    for(int i = 0; i < 5; i++){
        [scrollView addSubview:({
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width * i, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
            view.backgroundColor = [colorArray objectAtIndex:i];
            view;
        })];
    }
//    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
}

// 执行了滚动
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"%@",@"didScroll...");
}

// 开始拖拽
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"%@",@"beginDragging...");
}

// 结束拖拽
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset API_AVAILABLE(ios(5.0)){
    NSLog(@"%@",@"endDragging...");
}

// 开始减速
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"%@",@"beginDecelerating...");
}

// 结束减速
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"%@",@"endDecelerating...");
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
