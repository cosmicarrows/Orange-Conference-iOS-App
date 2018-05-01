//
//  scheduleSlideBottomLayer.m
//  orangeConference
//
//  Created by Laurence Wingo on 1/17/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import "scheduleSlideBottomLayer.h"
#import <QuartzCore/QuartzCore.h>

@interface scheduleSlideBottomLayer ()

@end

@implementation scheduleSlideBottomLayer
@synthesize sliderTableView, firstSectionCellHeight, secondSectionCellHeight, window;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //[self.window makeKeyAndVisible];
    

	// Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor brownColor];
    //Navigation Bar
    UINavigationBar *naviBarObj = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    //[self.view.window addSubview:naviBarObj];
    [self.view addSubview:naviBarObj];
    [naviBarObj setBackgroundImage:[UIImage imageNamed:@"sliderNavBar.png"] forBarMetrics:UIBarMetricsDefault];
    naviBarObj.layer.shadowColor = [UIColor blackColor].CGColor;
    naviBarObj.layer.shadowOffset = CGSizeMake(0, 2);
    naviBarObj.layer.shadowOpacity = 10;
    naviBarObj.layer.shadowRadius = 1;
    
    //Table View for Slider TableView 
    sliderTableView = [[UITableView alloc]initWithFrame:CGRectMake(-15, 55, 350, 400) style:UITableViewStyleGrouped];
    sliderTableView.dataSource = self;
    sliderTableView.delegate = self;
    [self.sliderTableView setBackgroundView: nil];
        //sliderTableView.scrollEnabled = FALSE;

    self.sliderTableView.backgroundColor=[UIColor orangeColor];
    
    
    
    //sliderTableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tableviewbkg.png"]];
    //UIImage *backgroundImage = [UIImage imageNamed:@"tableviewbkg.png"];
    //UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:backgroundImage];
    //self.sliderTableView.backgroundView=backgroundImageView;
    self.sliderTableView.rowHeight = 51;
    
    
    
    //[self.sliderTableView setSeparatorStyle:UITableViewCellSelectionStyleGray];
    //[self.view.window addSubview:sliderTableView];
    [self.view addSubview:sliderTableView];



}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;  {
    return 2;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if(section==0)
        return 3;
    else if(section==1)
        return 4;
    
    return 1;}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    
    UITableViewCell *cell = nil;
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyCell"];
    }
        
    UIView *bgColorView = [[UIView alloc] init];
    [bgColorView setBackgroundColor:[UIColor clearColor]];
    cell.textLabel.highlightedTextColor = [UIColor orangeColor];
    cell.detailTextLabel.highlightedTextColor = [UIColor orangeColor];
    cell.layer.masksToBounds = YES;
    cell.layer.cornerRadius = 10;
    
    [cell setSelectedBackgroundView:bgColorView];
    bgColorView.layer.cornerRadius = 10;
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.backgroundColor = [UIColor orangeColor];
    
    
    UILabel *mainTitleOfCell = [[UILabel alloc] initWithFrame:CGRectMake(90, 0, 229, 24)];
    mainTitleOfCell.text = [NSString stringWithFormat:@"Speakers Name %i",indexPath.section];
    mainTitleOfCell.font = [UIFont systemFontOfSize:12];
    mainTitleOfCell.font = [UIFont fontWithName:@"Gill Sans" size:12];
    [cell addSubview:mainTitleOfCell];
    [mainTitleOfCell setBackgroundColor:[UIColor clearColor]];
    mainTitleOfCell.highlightedTextColor = [UIColor whiteColor];
    mainTitleOfCell.textAlignment = NSTextAlignmentRight;
    
    
    [[cell textLabel] setBackgroundColor:[UIColor clearColor]];
    [[cell detailTextLabel] setBackgroundColor:[UIColor clearColor]];
    
    //UIView *cellBackView = [[UIView alloc] initWithFrame:CGRectZero];
    //cellBackView.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"sliderCellBkg.png"]];
    //cell.backgroundView = cellBackView;
    
    
    return cell;
    
}


-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UILabel *result = nil;
    
    if ([tableView isEqual:self.sliderTableView] && section == 0){
        
        
        
        
        
        result = [[UILabel alloc]initWithFrame:CGRectMake(0,0,0,4)];
        result.text = @"SHOW";
        result.textColor = [UIColor orangeColor];
        result.backgroundColor  = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sectionHeaderBkg.png"]];
        result.font = [UIFont fontWithName:@"Gill Sans" size:10];
        
               //result.textAlignment = NSTextAlignmentCenter;
        //[result sizeToFit];
        //CGRect frame = result.frame;
        //frame.size.width += 20; //l + r padding
        //result.frame = frame;
        
    }
    
    else if ([tableView isEqual:self.sliderTableView] && section == 1){
        result = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 300, 44)];
        result.text = @"JUMP TO";
        result.backgroundColor  = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sectionHeaderBkg.png"]];
        result.font = [UIFont fontWithName:@"Gill Sans" size:10];
        
        result.textColor = [UIColor orangeColor];
        //result.font = [UIFont boldSystemFontOfSize:10];
            CGRect frame = CGRectMake(0, 0, 320, 25);
        frame.origin.x = 50; //move the frame over..this adds the padding!
        frame.size.width = self.view.bounds.size.width - frame.origin.x;
         result.frame = frame;

   
        
    }
    return  result;
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
