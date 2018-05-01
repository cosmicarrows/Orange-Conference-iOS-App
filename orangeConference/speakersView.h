//
//  secondView.h
//  orangeConference
//
//  Created by Laurence Wingo on 1/9/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "speakersDetailView.h"

@interface speakersView : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    
    UITableView *speakersTableView;
    UINavigationController *navController;
}
@property (nonatomic, strong) UITableView *speakersTableView;
@property (nonatomic, strong) speakersDetailView *detailViewController;
@property (nonatomic, strong) UINavigationController *navController;


@end
