//
//  mainTabBarController.m
//  新闻眼
//
//  Created by tarena on 16/9/16.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "mainTabBarController.h"
#import "ViewController.h"
@interface mainTabBarController ()

@end

@implementation mainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    ViewController *vc=[ViewController new];
    
    vc.title=@"新闻";
    
    UIViewController *vc2=[UIViewController new];
    vc2.title=@"我";
    vc2.view.backgroundColor=[UIColor whiteColor];
    
    self.viewControllers=@[vc,vc2];

}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    CGRect frame = self.tabBar.frame;
    frame.size.height = 75;
    frame.origin.y = self.view.frame.size.height - frame.size.height;
    self.tabBar.frame = frame;
    
    self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.barStyle = UIBarStyleBlack;//此处需要设置barStyle，否则颜色会分成上下两层
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
