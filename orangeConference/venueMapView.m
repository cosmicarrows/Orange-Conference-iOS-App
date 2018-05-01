//
//  ViewController.m
//  orangeConference
//
//  Created by Laurence Wingo on 1/9/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import "venueMapView.h"
#import <QuartzCore/QuartzCore.h>

@interface venueMapView ()

@end

@implementation venueMapView
@synthesize myImageView, myScrollView;

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    /*Gets called when user scrolls or drags */
    self.myScrollView.alpha = 0.50f;
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    /*Gets called only after scrolling */
    self.myScrollView.alpha = 1.0f;
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    /*Make sure the alpha is reset even if the user is dragging */
    self.myScrollView.alpha = 1.0f;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Navigation Bar
    UINavigationBar *naviBarObj = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    [self.view addSubview:naviBarObj];
    [naviBarObj setBackgroundImage:[UIImage imageNamed:@"venuemapnav.png"] forBarMetrics:UIBarMetricsDefault];
    naviBarObj.layer.shadowColor = [UIColor blackColor].CGColor;
    naviBarObj.layer.shadowOffset = CGSizeMake(0, 2);
    naviBarObj.layer.shadowOpacity = 10;
    naviBarObj.layer.shadowRadius = 1.0;
    
    
    UIImage *imageToLoad = [UIImage imageNamed:@"actualVenueMap.png"];
    self.myImageView = [[UIImageView alloc] initWithImage:imageToLoad];
    self.myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 55, 320, 400)];
    [self.myScrollView addSubview:self.myImageView];
    self.myScrollView.contentSize = self.myImageView.bounds.size;
    self.myScrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    [self.view addSubview:self.myScrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
