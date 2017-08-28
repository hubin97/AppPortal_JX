//
//  AppDelegate.m
//  AppPortal_JX
//
//  Created by mastercom on 2017/8/25.
//  Copyright © 2017年 MT. All rights reserved.
//

#import "AppDelegate.h"
#import <MagicalRecord/MagicalRecord.h>
#import "MTUtils.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"UICommonBundle" withExtension:@"bundle"];
    if(url){
        [MTGlobalInfo sharedInstance].commBundle = [NSBundle bundleWithURL:url];
    }
    
    //[self setupBMap];
    
    [self setupAppearance];
    
    // 对Magical Record的初始化
    [MagicalRecord setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"AppPortal"];
    
    
    [UINavigationBar appearanceWhenContainedIn:[UINavigationController class], nil].backgroundColor = [UIColor colorWithHexString:@"0x0085d0"];
    if (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_0) {
        [UINavigationBar appearanceWhenContainedIn:[UINavigationController class], nil].barTintColor = [UIColor colorWithHexString:@"0x0085d0"];
    }
    
    [MTBaseViewController didUseNewNaviBgColor:YES];
    NSString* className= @"APWelcomeViewController";
    
    self.rootViewController = [[MTTargetMaker sharedInstance] fromClassName:className];
    self.navigationController = (MTNavigationController*)[[UINavigationController alloc] initWithRootViewController:self.rootViewController];
    
    self.window.rootViewController = self.navigationController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
