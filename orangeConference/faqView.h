//
//  faqView.h
//  orangeConference
//
//  Created by Laurence Wingo on 1/10/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>




@interface faqView : UIViewController <UITableViewDataSource> {
    
    UITableView *faqTableView;
}
@property (nonatomic, strong) UITableView *faqTableView;

@end
