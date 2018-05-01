//
//  scheduleSlideBottomLayer.h
//  orangeConference
//
//  Created by Laurence Wingo on 1/17/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface scheduleSlideBottomLayer : UIViewController<UITableViewDataSource, UITableViewDelegate, UIGestureRecognizerDelegate> {
    
    UITableView *sliderTableView;
}
@property (nonatomic, strong) UITableView *sliderTableView;
@property int *firstSectionCellHeight;
@property int *secondSectionCellHeight;
@property (strong, nonatomic) UIWindow *window;



@end
