//
//  ViewController.h
//  orangeConference
//
//  Created by Laurence Wingo on 1/9/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface venueMapView : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong) UIImageView *myImageView;
@property (nonatomic, strong) UIScrollView *myScrollView;

@end
