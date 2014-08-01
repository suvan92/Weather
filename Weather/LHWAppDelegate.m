//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "LHWCityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSDictionary *cities = @{@"Tokyo": @{@"Temperature": @"14", @"Chance of rain": @"10%", @"Humidity": @"0.3"},
                             @"Chicago": @{@"Temperature": @"25", @"Chance of rain": @"4%", @"Humidity": @"0.4"},
                             @"Vancouver": @{@"Temperature": @"5", @"Chance of rain": @"90%", @"Humidity": @"0.5"},
                             @"Cape Town": @{@"Temperature": @"31", @"Chance of rain": @"78%", @"Humidity": @"0.1"},
                             @"Ulan Bator": @{@"Temperature": @"26", @"Chance of rain": @"33%", @"Humidity": @"0.2"}};
    NSMutableArray *cityVCs = [NSMutableArray array];
    
    for (NSString *cityName in [cities allKeys]) {
        LHWCityViewController *cityVC = [[LHWCityViewController alloc] initWithCity:[cities valueForKey:cityName]];
        cityVC.title = cityName;
        cityVC.view.backgroundColor = [UIColor whiteColor];
        
        UINavigationController *cityNavVC = [[UINavigationController alloc] initWithRootViewController:cityVC];
        
        [cityVCs addObject:cityNavVC];
    }
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.view.backgroundColor = [UIColor redColor];
    [tabBarController setViewControllers:cityVCs animated:NO];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
