//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSDictionary *cities = @{@"Tokyo": @{@"Temperature": @"14", @"Chance of rain": @"10%", @"Humidity": @"0.3"},
                             @"Chicago": @{@"Temperature": @"25", @"Chance of rain": @"4%", @"Humidity": @"0.4"},
                             @"Vancouver": @{@"Temperature": @"5", @"Chance of rain": @"90%", @"Humidity": @"0.5"},
                             @"Cape Town": @{@"Temperature": @"31", @"Chance of rain": @"78%", @"Humidity": @"0.1"},
                             @"Ulan Bator": @{@"Temperature": @"26", @"Chance of rain": @"33%", @"Humidity": @"0.2"}};
    NSMutableArray *cityVCs = [NSMutableArray array];
    
    
    return YES;
}

@end
