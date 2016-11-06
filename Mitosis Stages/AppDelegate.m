//
//  AppDelegate.m
//  Mitosis Stages
//
//  Created by Nakul Bajaj on 11/9/15.
//  Copyright © 2015 Nakul Bajaj. All rights reserved.
//

#import "AppDelegate.h"
#define ROOTVIEW [[[UIApplication sharedApplication] keyWindow] rootViewController]
#define SECONDVIEW [[[UIApplication sharedApplication] keyWindow]

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    
    if ([shortcutItem.type isEqualToString:@"interphase3dsc"]) {
        UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"Interphase"];
        vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [ROOTVIEW presentViewController:vc animated:YES completion:^{}];
    }
    if ([shortcutItem.type isEqualToString:@"mitosis3dsc"]) {
        UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"Mitosis"];
        vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [ROOTVIEW presentViewController:vc animated:YES completion:^{}];
        
    }
    if ([shortcutItem.type isEqualToString:@"cytokenisis3dsc"]) {
        UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"Cytokenisis"];
        vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [ROOTVIEW presentViewController:vc animated:YES completion:^{}];
    }

   
}


@end
