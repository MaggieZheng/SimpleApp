//
//  MZVideoCollectionViewController.m
//  SimpleApp
//
//  Created by 郑梦真 on 2020/2/20.
//  Copyright © 2020 MaggieZ. All rights reserved.
//

#import "MZVideoCollectionViewController.h"

@interface MZVideoCollectionViewController () <UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation MZVideoCollectionViewController

- (instancetype) init{
    self = [super init];
    if(self) {
        self.tabBarItem.title = @"视频";
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar_video"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_video_selected"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//    flowLayout.itemSize = CGSizeMake(50, 100);
//    flowLayout.minimumLineSpacing = 10;
//    flowLayout.minimumInteritemSpacing = 10;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    
    // 声明代理
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    
    [self.view addSubview:collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 200;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    // 如果回收池中没有cell，将会从上面注册的ureuseID自动创建相应的cell
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

@end
