//
//  TestViewController.m
//  AwesomeProject
//
//  Created by Lix on 2018/3/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "TestViewController.h"
#import "RNViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  [self.navigationController setNavigationBarHidden:false animated:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"原生测试页面";
    self.view.backgroundColor = [UIColor redColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  
}

- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
  [self.navigationController setNavigationBarHidden:true animated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)buttonClick:(UIButton *)sender {
    RNViewController *vc = [[RNViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

@end
