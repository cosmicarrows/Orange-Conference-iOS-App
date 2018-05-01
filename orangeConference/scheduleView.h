//
//  firstView.h
//  orangeConference
//
//  Created by Laurence Wingo on 1/9/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface scheduleView : UIViewController <UITableViewDataSource, UIGestureRecognizerDelegate> {
    
    UISegmentedControl *weeklySegmentedControl;
    UITableView *regularScheduleTableView;
}
@property (nonatomic, strong) UISegmentedControl *weeklySegmentedControl;
@property (nonatomic, strong) UITableView *regularScheduleTableView;
@property (nonatomic, strong) UIViewController *secondViewController;
@property (nonatomic) CGFloat layerPosition;
@property (nonatomic, strong) UIView *topLayer;


//start of slider testing:
@property (strong, nonatomic) IBOutlet UINavigationBar *sliderNavBar;








- (void)handleTap:(UITapGestureRecognizer *)recognizer;
-(void)panLayer:(UIPanGestureRecognizer *)pan;


@end
