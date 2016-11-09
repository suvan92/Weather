//
//  City.m
//  Weather
//
//  Created by Suvan Ramani on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City


- (instancetype)initWithName:(NSString *)name temperature:(int)temperature humidity:(int)humidity weather:(NSString *)weather{
    self = [super init];
    if (self) {
        self.cityName = name;
        self.currentTemp = temperature;
        self.currentHumidity = humidity;
        self.weather = weather;
    }
    return self;
}


@end
