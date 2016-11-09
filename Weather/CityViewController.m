//
//  CityViewController.m
//  Weather
//
//  Created by Suvan Ramani on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@implementation CityViewController

-(instancetype)initWithCity:(City *)city {
    self = [super self];
    if (self) {
        self.city = city;
        self.title = city.cityName;
        self.view.backgroundColor = [UIColor whiteColor];
        [self createDetailsButton];
        [self showWeatherDetails];
        [self showBasicDetails];
        
    }
    return self;
}

- (void)showWeatherDetails
{
    DetailedViewController *cityDetails = [[DetailedViewController alloc] initWithCity:self.city];
    
    [self.navigationController pushViewController:cityDetails animated:YES];
}

-(void)createDetailsButton
{
    UIBarButtonItem *showWeatherDetails = [[UIBarButtonItem alloc]
                                           initWithTitle:@"View Details"
                                           style:UIBarButtonItemStylePlain
                                           target:self
                                           action:@selector(showWeatherDetails)];
    self.navigationItem.rightBarButtonItem = showWeatherDetails;
}

-(void)showBasicDetails {
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 200, 300, 20)];
    UILabel *weatherLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 220, 400, 20)];
    
    nameLabel.text = [NSString stringWithFormat:@"City: %@", self.city.cityName];
    nameLabel.textColor = [UIColor blackColor];
    weatherLabel.text = [NSString stringWithFormat:@"Weather: %@", self.city.weather];
    
    [self.view addSubview:nameLabel];
    [self.view addSubview:weatherLabel];
}


@end
