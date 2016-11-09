//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "CityViewController.h"
#import "DetailedViewController.h"
#import "City.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    City *vancouver = [[City alloc] initWithName:@"Vancouver" temperature:13 humidity:95 weather:@"Crappy"];
    City *kobe = [[City alloc] initWithName:@"Kobe" temperature:9 humidity:74 weather:@"Cloudy"];
    City *london = [[City alloc] initWithName:@"London" temperature:6 humidity:88 weather:@"Even crappier"];
    City *tokyo = [[City alloc] initWithName:@"Tokyo" temperature:8 humidity:66 weather:@"Clear"];
    City *singapore = [[City alloc] initWithName:@"Singapore" temperature:26 humidity:90 weather:@"Sunny"];
    
    CityViewController *vancouverVC = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *kobeVC = [[CityViewController alloc] initWithCity:kobe];
    CityViewController *londonVC = [[CityViewController alloc] initWithCity:london];
    CityViewController *tokyoVC = [[CityViewController alloc] initWithCity:tokyo];
    CityViewController *singaporeVC = [[CityViewController alloc] initWithCity:singapore];
    
    UINavigationController *vancouverNC = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    UINavigationController *kobeNC = [[UINavigationController alloc] initWithRootViewController:kobeVC];
    UINavigationController *londonNC = [[UINavigationController alloc] initWithRootViewController:londonVC];
    UINavigationController *tokyoNC = [[UINavigationController alloc] initWithRootViewController:tokyoVC];
    UINavigationController *singaporerNC = [[UINavigationController alloc] initWithRootViewController:singaporeVC];
    
    NSArray *navigationControllers = @[vancouverNC, kobeNC, londonNC, tokyoNC, singaporerNC];
    
    tabBarController.viewControllers = navigationControllers;
    
    [self.window setRootViewController:tabBarController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
