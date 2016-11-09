//
//  DetailedViewController.m
//  Weather
//
//  Created by Suvan Ramani on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"
#import "City.h"

@implementation DetailedViewController

-(instancetype)initWithCity:(City *)city {
    self = [super self];
    if (self) {
        self.city = city;
        self.view.backgroundColor = [UIColor grayColor];
        [self showDetails];
    }
    
    return self;
}


-(void)showDetails {
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 200, 300, 20)];
    UILabel *weatherLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 220, 400, 20)];
    UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 240, 400, 20)];
    UILabel *humidityLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 260, 400, 20)];
    
    nameLabel.text = [NSString stringWithFormat:@"City: %@", self.city.cityName];
    nameLabel.textColor = [UIColor blackColor];
    weatherLabel.text = [NSString stringWithFormat:@"Weather: %@", self.city.weather];
    tempLabel.text = [NSString stringWithFormat:@"Temperature (C): %d", self.city.currentTemp];
    humidityLabel.text = [NSString stringWithFormat:@"Humidity: %d", self.city.currentHumidity];
    
    [self.view addSubview:nameLabel];
    [self.view addSubview:weatherLabel];
    [self.view addSubview:tempLabel];
    [self.view addSubview:humidityLabel];
}

@end
