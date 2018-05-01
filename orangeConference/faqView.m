//
//  faqView.m
//  orangeConference
//
//  Created by Laurence Wingo on 1/10/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import "faqView.h"
#import <QuartzCore/QuartzCore.h>

@interface faqView ()

@end

@implementation faqView
@synthesize faqTableView;

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
	// Do any additional setup after loading the view.
    //Navigation Bar
    UINavigationBar *naviBarObj = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    [self.view addSubview:naviBarObj];
    [naviBarObj setBackgroundImage:[UIImage imageNamed:@"faqnavbar.png"] forBarMetrics:UIBarMetricsDefault];
    naviBarObj.layer.shadowColor = [UIColor blackColor].CGColor;
    naviBarObj.layer.shadowOffset = CGSizeMake(0, 2);
    naviBarObj.layer.shadowOpacity = 10;
    naviBarObj.layer.shadowRadius = 1.0;
    
    //Table View for FAQ Questions
    faqTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 55, 320, 400) style:UITableViewStyleGrouped];
    faqTableView.dataSource = self;
    self.faqTableView.backgroundColor=[UIColor clearColor];
    faqTableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tableviewbkg.png"]];
    UIImage *backgroundImage = [UIImage imageNamed:@"tableviewbkg.png"];
    UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:backgroundImage];
    self.faqTableView.backgroundView=backgroundImageView;
    [self.view addSubview:faqTableView];


}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;  {
    return 6;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    
    return 1;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    
    UITableViewCell *cell = nil;
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyCell"];
        
        
        
        
    }
    cell.textLabel.text = [NSString stringWithFormat:@"PRESENTOR %lu", (unsigned long)indexPath.row + 1];
    
    cell.textLabel.font = [UIFont fontWithName:@"Gill Sans" size:16.0];
    
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Speakers Position\nMinistry"];
    cell.detailTextLabel.font = [UIFont  systemFontOfSize:12];
    
    
    
    
    cell.detailTextLabel.numberOfLines = 2;
    
    
    UIView *bgColorView = [[UIView alloc] init];
    [bgColorView setBackgroundColor:[UIColor clearColor]];
    cell.textLabel.highlightedTextColor = [UIColor orangeColor];
    cell.detailTextLabel.highlightedTextColor = [UIColor orangeColor];
    //cell.imageView.layer.masksToBounds = YES;
    //cell.imageView.layer.cornerRadius = 5.0;
    cell.layer.masksToBounds = YES;
    cell.layer.cornerRadius = 10.0;
    
    [cell setSelectedBackgroundView:bgColorView];
    bgColorView.layer.cornerRadius = 10;
    cell.imageView.image = [UIImage imageNamed:@"tableviewborder.png"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    [[cell textLabel] setBackgroundColor:[UIColor clearColor]];
    [[cell detailTextLabel] setBackgroundColor:[UIColor clearColor]];
    
    
    UIView *cellBackView = [[UIView alloc] initWithFrame:CGRectZero];
    cellBackView.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"cellbkg3.png"]];
    cell.backgroundView = cellBackView;
    
    
    
    return cell;
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
