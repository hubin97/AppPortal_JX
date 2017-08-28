//
//  APLoginViewController_AppPortalDemo.m
//  AppPortal_JX
//
//  Created by mastercom on 2017/8/28.
//  Copyright © 2017年 MT. All rights reserved.
//

#import "APLoginViewController_AppPortalDemo.h"

@interface APLoginViewController_AppPortalDemo ()

@end

@implementation APLoginViewController_AppPortalDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //读取本地设置页
    NSString* filePath = [[NSBundle mainBundle]pathForResource:@"MenuSettings" ofType:@"plist"];
    self.menuSetting = [NSArray arrayWithContentsOfFile:filePath];
    self.menuType = 0;
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
