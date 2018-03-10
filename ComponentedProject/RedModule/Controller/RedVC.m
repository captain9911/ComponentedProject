//
//  RedVC.m
//  ComponentedProject
//
//  Created by MrT on 2018/3/10.
//  Copyright © 2018年 captain9911. All rights reserved.
//

#import "RedVC.h"
#import "RedModuleHeader.h"
#import "GreenVC.h"

@interface RedVC ()

@end

@implementation RedVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton new];
    [btn setTitle:@"跳转到绿色页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickedOnBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.top.mas_equalTo(200);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clickedOnBtn:(id)sender {
    NSLog(@"点击了红色页面的按钮");
    [self.navigationController pushViewController:[GreenVC new] animated:YES];
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
