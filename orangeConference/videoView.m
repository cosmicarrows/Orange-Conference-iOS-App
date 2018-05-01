//
//  videoView.m
//  orangeConference
//
//  Created by Laurence Wingo on 1/10/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import "videoView.h"
#import <QuartzCore/QuartzCore.h>

@interface videoView ()

@end

@implementation videoView
@synthesize videoPlayButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)buttonIsPressed:(UIButton *)paramSender{
    NSLog(@"button is pressed");
}
-(void)buttonIsTapped:(UIButton *)paramSender{
    NSLog(@"Button is tapped");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    
    //Navigation Bar
    UINavigationBar *naviBarObj = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    [self.view addSubview:naviBarObj];
    [naviBarObj setBackgroundImage:[UIImage imageNamed:@"videonavbar.png"] forBarMetrics:UIBarMetricsDefault];
    naviBarObj.layer.shadowColor = [UIColor blackColor].CGColor;
    naviBarObj.layer.shadowOffset = CGSizeMake(0, 2);
    naviBarObj.layer.shadowOpacity = 10;
    naviBarObj.layer.shadowRadius = 1.0;
    
    videoPlayButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    self.videoPlayButton.frame = CGRectMake(0, 53, 320, 180);
    
    UIImage *playButtonImage = [UIImage imageNamed:@"videoPlayButton.png"];
    [self.videoPlayButton setImage:playButtonImage forState:UIControlStateNormal];
    
    //[self.videoPlayButton setTitle:@"Play Orange" forState:UIControlStateNormal];
    
    [self.videoPlayButton addTarget:self action:@selector(buttonIsPressed:) forControlEvents:UIControlEventTouchDown];
    
    [self.videoPlayButton addTarget:self action:@selector(buttonIsTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.videoPlayButton];
    
    UILabel *mainTitle = [[UILabel alloc] initWithFrame:CGRectMake(28, 275, 229, 24)];
    mainTitle.text = [NSString stringWithFormat:@"Live stream will be available starting"];
    mainTitle.font = [UIFont systemFontOfSize:12];
    mainTitle.font = [UIFont fontWithName:@"Gill Sans" size:15.0];
    [self.view addSubview:mainTitle];
    [mainTitle setBackgroundColor:[UIColor clearColor]];
    mainTitle.textColor = [UIColor grayColor];
    
    UILabel *mainDate = [[UILabel alloc] initWithFrame:CGRectMake(28, 292, 229, 24)];
    mainDate.text = [NSString stringWithFormat:@"Wednesday, April 24, 2013"];
    mainDate.font = [UIFont systemFontOfSize:12];
    mainDate.font = [UIFont fontWithName:@"Gill Sans" size:15.0];
    [self.view addSubview:mainDate];
    [mainDate setBackgroundColor:[UIColor clearColor]];
    mainDate.textColor = [UIColor orangeColor];
    
    UILabel *mainRead = [[UILabel alloc] initWithFrame:CGRectMake(28, 330, 245, 55)];
    mainRead.text = [NSString stringWithFormat:@"In the meantime, for an inside look, check out the making of Orange video here."];
    mainRead.font = [UIFont systemFontOfSize:12];
    mainRead.font = [UIFont fontWithName:@"Gill Sans" size:15.0];
    [self.view addSubview:mainRead];
    [mainRead setBackgroundColor:[UIColor clearColor]];
    mainRead.textColor = [UIColor grayColor];
    mainRead.numberOfLines = 4;


    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
