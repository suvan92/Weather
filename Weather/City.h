//
//  City.h
//  Weather
//
//  Created by Suvan Ramani on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic) NSString *cityName;
@property (nonatomic) int currentTemp;
@property (nonatomic) int currentHumidity;
@property (nonatomic) NSString *weather;

-(instancetype)initWithName:(NSString *)name temperature:(int)temperature humidity:(int)humidity weather:(NSString *)weather;

@end
