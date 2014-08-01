//
//  LHWCityViewController.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWCityViewController.h"
#import "LHWWeatherDetailsViewController.h"

@interface LHWCityViewController ()

@property (nonatomic) NSDictionary *city;

@end

@implementation LHWCityViewController

- (id)initWithCity:(NSDictionary *)city
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _city = city;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [self initWithCity:nil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Put in the weather buttons here
    
    NSArray *keys = [self.city allKeys];
    
    for (NSString *title in keys) {
        UIButton *detailButton = [UIButton buttonWithType:UIButtonTypeSystem];
        detailButton.frame = CGRectMake(0.0, 100.0 * [keys indexOfObject:title] + 100.0, 320.0, 100.0);
        [detailButton setTitle:title forState:UIControlStateNormal];
        [detailButton addTarget:self action:@selector(showWeatherDetails:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:detailButton];
    }
}

- (void)showWeatherDetails:(id)sender
{
    UIButton *senderButton = (UIButton *)sender;
    
    LHWWeatherDetailsViewController *weatherDetails = [[LHWWeatherDetailsViewController alloc] init];
    [self.navigationController pushViewController:weatherDetails animated:NO];
    weatherDetails.weatherDetailName = senderButton.titleLabel.text;
    weatherDetails.weatherDetailValue = [self.city valueForKey:weatherDetails.weatherDetailName];
}

@end
