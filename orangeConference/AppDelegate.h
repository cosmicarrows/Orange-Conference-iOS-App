//
//  AppDelegate.h
//  orangeConference
//
//  Created by Laurence Wingo on 1/9/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "scheduleView.h"
#import "speakersView.h"
#import "venueMapView.h"
#import "faqView.h"
#import "videoView.h"
#import "loginView.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, retain) scheduleView *viewController1;
@property (strong, retain) speakersView *viewController2;
@property (strong, retain) venueMapView *viewController3;
@property (strong, retain) faqView *viewController4;
@property (strong, retain) videoView *viewController5;
@property (strong, retain) loginView *loginController6;
@property (strong, retain) UITabBarController *mainTab;
@property (strong, retain) NSArray *tabs_array;
@property (nonatomic, strong) UIViewController *secondViewController;


@end
