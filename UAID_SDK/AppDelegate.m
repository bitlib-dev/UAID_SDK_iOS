//
//  AppDelegate.m
//  UAID_SDK
//
//  Created by bindx on 2021/4/3.
//

#import "AppDelegate.h"
#import <UAID/UAidHelper.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 初始化
    [[UAidHelper getInstance] initWithKey:@"a2fab6b2d50a33215d77774ef0e58ba7"];

    return YES;
}




@end
