//
//  AppDelegate.m
//  AddLockers
//
//  Created by Andrew Bennie on 6/20/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

#import <NewRelicAgent/NewRelicAgent.h>

@implementation AppDelegate

@synthesize navController = _navController;

//We add custom setup before our view loads.


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions

{
    [NewRelicAgent startWithApplicationToken:@"AA0adb94de7593a75fcb6fc4b8b4e398b1569d87ba"];
}

{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

   //Set magical record sync with core data
    [MagicalRecord setupAutoMigratingCoreDataStack];
    // Override point for customization after application launch.
    UIViewController *addAccountVC = [[ViewController alloc] initWithNibName:nil bundle:nil];
   // UIViewController *lockerVC = [[LockerListViewController alloc] initWithNibName:@"LockerListViewController" bundle: nil];
   // UITableViewController *accountsVC = [[feedAccountsTable alloc] initWithNibName:@"feedAccountsTable" bundle:nil];
   //QCPasswordItem *viewAccount = [[QCPasswordItem alloc] initWithNibName:nil bundle:nil];
    // Add a UINavigationController which creates a special viewcontroller that manages our view hierarchy
    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController:addAccountVC];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

// Practice code: Override point for customization after application launch.
//UIViewController *viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
//UIViewController *viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
//UITableViewController *viewController3 = [[ParkTable alloc] initWithNibName:@"ParkTable" bundle:nil];
//UITableViewController *viewController4 = [[TableTest alloc] initWithNibName:@"TableTest" bundle:nil];
//UINavigationController *navController1 = [[[UINavigationController alloc] initWithRootViewController:viewController4]];
//
//self.tabBarController = [[UITabBarController alloc] init];
//self.ParkTableDel = [[UITableViewController alloc] init];
//
//self.tabBarController.viewControllers = [NSArray arrayWithObjects:viewController1, viewController2, viewController3, viewController4, nil];
//self.window.rootViewController = self.tabBarController;
//[self.window makeKeyAndVisible];
//return YES;
//}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
