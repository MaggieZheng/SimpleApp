//
//  ViewController.m
//  SimpleApp
//
//  Created by 郑梦真 on 2020/2/16.
//  Copyright © 2020 MaggieZ. All rights reserved.
//

#import "ViewController.h"
#import "MZNormalTableViewCell.h"

@interface ViewController()<UITableViewDataSource,UITableViewDelegate>

@end

// 查看UIViewController生命周期内部是怎么执行的
@implementation ViewController

- (instancetype) init{
    self = [super init];
    if(self) {
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //  设置背景颜色为白色
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 展示最基础的UITableView
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.dataSource = self; //ViewController 实现dataSource所有自定义的方法
    tableView.delegate = self;
    tableView.allowsMultipleSelectionDuringEditing = YES;
    [self.view addSubview:tableView];
    
//    // 创建绿色 宽高各150的view
//    TestView *view2 = [[TestView alloc] init];
//    view2.backgroundColor = [UIColor greenColor];
//    view2.frame = CGRectMake(150, 150, 100, 100);
//    [self.view addSubview:view2];
//
//    // 设置点击事件
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
//    [view2 addGestureRecognizer:tapGesture];
}

// 返回总共有多少个tableViewCell
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //  取回收池中的cell
    MZNormalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if(!cell){
        cell = [[MZNormalTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    
    [cell layoutTableViewCell];
//    cell.textLabel.text = [NSString stringWithFormat:@"主标题 - %@", @(indexPath.row+1)];
//    cell.detailTextLabel.text = @"副标题";
//    cell.imageView.image = [UIImage imageNamed:@"tabbar_news"];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
//    UIView *childView = [[UIView alloc] initWithFrame:CGRectMake(0, 90, 100, 100)];
//    childView.backgroundColor = [UIColor redColor];
//    [viewController.view addSubview:childView];
    UITextView *text1 = [[UITextView alloc] init];
    UITextView *text2=  [[UITextView alloc] init];
    text1.text = [NSString stringWithFormat:@"section - %@",@(indexPath.section+1)];
    text2.text = [NSString stringWithFormat:@"index - %@",@(indexPath.row+1)];
    text1.textColor = [UIColor blackColor];
    text2.textColor = [UIColor blackColor];

    [viewController.view addSubview:text1];
    [viewController.view addSubview:text2];
    
    viewController.title = [NSString stringWithFormat:@"主标题 - %@",@(indexPath.row+1)];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

//-(void) pushController{
//    UIViewController *viewController = [[UIViewController alloc] init];
//    viewController.view.backgroundColor = [UIColor whiteColor];
//    viewController.navigationItem.title = @"标题内容";
//    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧标题" style:UIBarButtonItemStylePlain target:self action:nil];
//
//    [self.navigationController pushViewController:viewController animated:YES];
//}

@end
