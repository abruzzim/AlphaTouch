//
//  AppDelegate.m
//  AlphaTouch
//
//  Created by abruzzim on 12/29/14.
//  Copyright (c) 2014 Mario Abruzzi. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /* Find the dimensions of the screen. */
    
    // Return the screen object representing the device's screen.
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    
    // Create the UIWindow (The "Canvas").
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
    // Create the ViewController (The "Paintbrush").
    UIViewController *colorTouchVC = [[UIViewController alloc] init];
    
    // Create the View the size of the whole screen (The "Paint").
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect];
    
    // Return a color object for the background color.
    colorView.backgroundColor = [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
    
    // Assign the View for this ViewController.
    colorTouchVC.view = colorView;
    
    // Assign the ViewController as the window's root view controller.
    self.window.rootViewController = colorTouchVC;
    
    //Make the receiver the key window and visible.
    [self.window makeKeyAndVisible];
    
    // Report the dimensions of the main screen.
    NSLog(@"Screen is %f points high and %f points wide.", viewRect.size.height, viewRect.size.width);
    
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

@end
