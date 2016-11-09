//
//  DetailedViewController.h
//  Weather
//
//  Created by Suvan Ramani on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class City;

@interface DetailedViewController : UIViewController

@property (nonatomic) City *city;

-(instancetype)initWithCity:(City *)city;

@end
