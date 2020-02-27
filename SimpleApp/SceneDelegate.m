#import "SceneDelegate.h"
#import "ViewController.h"
#import "ZMZViewController.h"
#import "MZVideoCollectionViewController.h"

@interface SceneDelegate ()<UITabBarControllerDelegate>

@end

@implementation SceneDelegate
- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    self.window.frame = windowScene.coordinateSpace.bounds;
    
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    // 新闻页
    ViewController *viewController = [[ViewController alloc] init];
    
    viewController.tabBarItem.title = @"新闻";
    viewController.tabBarItem.image = [UIImage imageNamed:@"tabbar_news"];  // 图片设置在文字上方
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_news_selected"];
    
//    ZMZViewController *controller2 = [[ZMZViewController alloc] init];

    MZVideoCollectionViewController *videoController = [[MZVideoCollectionViewController alloc] init];

    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor blueColor];
    controller3.tabBarItem.title = @"推荐";
    controller3.tabBarItem.image = [UIImage imageNamed:@"tabbar_like"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_like_selected"];
    
    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor greenColor];
    controller4.tabBarItem.title = @"我的";
    controller4.tabBarItem.image = [UIImage imageNamed:@"tabbar_mine"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"tarbar_mine_selected"];
    
    // 将四个页面的 UIViewController 加入到 UITabBarController 之中
    [tabbarController setViewControllers: @[viewController, videoController, controller3, controller4]];
    
    tabbarController.delegate = self;  // 需要自定义执行delegate的方法时在当前的类中进行
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"did select");
}

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
