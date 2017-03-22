//
//  NextViewController.m
//  SmoothNavDemo
//
//  Created by Cloudox on 2017/3/15.
//  Copyright © 2017年 Cloudox. All rights reserved.
//

#import "NextViewController.h"
#import "ViewController.h"
#import "UIViewController+Cloudox.h"
#import "UINavigationController+Cloudox.h"

@interface NextViewController () <UINavigationControllerDelegate>

@property (nonatomic, strong) UIColor *barBGColor;
@property (nonatomic, strong) UIImage *barShadowImg;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Second View";
//    self.view.backgroundColor = [UIColor lightGrayColor];
    self.view.backgroundColor = [UIColor colorWithRed:0xe0/255.0f green:0x7a/255.0f blue:0x40/255.0f alpha:1.0f];
    
    
    
    self.navigationController.delegate = self;
//    self.navigationController.delegate = self.navigationController;
    
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    [back setTitle:@"Back" forState:UIControlStateNormal];
    [back setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(toBackView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    [btn setTitle:@"GoNext" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toNextView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navBarBgAlpha = @"0.0";
    
    // 设置导航栏标题和返回按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
//    self.navigationController.navigationBar.shadowImage = [self imageByApplyingAlpha:0.0 image:self.navigationController.navigationBar.shadowImage];
    
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    
//    self.barBGColor = self.navigationController.navigationBar.backgroundColor;
//    self.barShadowImg = self.navigationController.navigationBar.shadowImage;
    
    
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
//    self.navigationController.navigationBar.shadowImage = [UIImage new];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // 设置导航栏标题和返回按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
    
//    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    
//    self.navigationController.navigationBar.backgroundColor = self.barBGColor;
//    self.navigationController.navigationBar.shadowImage = self.barShadowImg;
    
}

// 返回上一页
- (void)toBackView {
    [self.navigationController popViewControllerAnimated:YES];
}

// 进入新界面
- (void)toNextView {
    ViewController *nextVC = [[ViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

#pragma mark - UINavigationControllerDelegate
// 将要显示控制器
//- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    // 判断要显示的控制器是否是自己
//    BOOL isShowSelf = [viewController isKindOfClass:[self class]];
//    
//    [self.navigationController setNavigationBarHidden:isShowSelf animated:YES];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
