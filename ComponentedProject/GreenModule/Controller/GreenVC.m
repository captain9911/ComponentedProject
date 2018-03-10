//
//  GreenVC.m
//  ComponentedProject
//
//  Created by MrT on 2018/3/10.
//  Copyright © 2018年 captain9911. All rights reserved.
//

#import "GreenVC.h"
#import "GreenModuleHeader.h"

@interface GreenVC ()

@end

@implementation GreenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    UIImageView *imgView = [UIImageView new];
    [imgView sd_setImageWithURL:[NSURL URLWithString:@"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1943249770,628140654&fm=200&gp=0.jpg"]];
    [self.view addSubview:imgView];
    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 250));
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.mas_equalTo(100);
    }];
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
