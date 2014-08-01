//
//  LHWWeatherDetailsViewController.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-31.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWWeatherDetailsViewController.h"

@interface LHWWeatherDetailsViewController ()

@end

@implementation LHWWeatherDetailsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *weatherDetailNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 300.0, 100.0)];
    weatherDetailNameLabel.text = self.weatherDetailName;
    [self.view addSubview:weatherDetailNameLabel];
    
    UILabel *weatherDetailValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 100.0, 300.0, 100.0)];
    weatherDetailValueLabel.text = self.weatherDetailValue;
    [self.view addSubview:weatherDetailValueLabel];
}

@end
