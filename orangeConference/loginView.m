//
//  loginView.m
//  orangeConference
//
//  Created by Laurence Wingo on 1/14/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import "loginView.h"
#import <QuartzCore/QuartzCore.h>

@interface loginView ()

@end

@implementation loginView
@synthesize myTextField, myTextFieldPassword;

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
    // Do any additional setup after loading the view from its nib.
    UILabel *mainRead = [[UILabel alloc] initWithFrame:CGRectMake(38, 220, 275, 90)];
    mainRead.text = [NSString stringWithFormat:@"Login with your ticket account credentials"];
    mainRead.font = [UIFont systemFontOfSize:12];
    mainRead.font = [UIFont fontWithName:@"Gill Sans" size:15.0];
    [self.view addSubview:mainRead];
    [mainRead setBackgroundColor:[UIColor clearColor]];
    mainRead.textColor = [UIColor whiteColor];
    mainRead.numberOfLines = 4;
    
    
    CGRect textFieldFrame = CGRectMake(28, 285, 275, 31);
    self.myTextField = [[UITextField alloc]initWithFrame:textFieldFrame];
    self.myTextField.borderStyle = UITextBorderStyleNone;
    self.myTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    //self.myTextField.text = @"USER NAME";
    self.myTextField.placeholder = @"USER NAME";
    self.myTextField.textColor = [[UIColor grayColor] colorWithAlphaComponent: 5.8f];
    self.myTextField.font = [UIFont fontWithName:@"Gill Sans" size:18.0];
    [self.view addSubview:self.myTextField];
    UIImage *fieldBGImage = [[UIImage imageNamed:@"userNameBkg.png"] stretchableImageWithLeftCapWidth:20 topCapHeight:20];
    [myTextField setBackground:fieldBGImage];
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 20)];
    myTextField.leftView = paddingView;
    myTextField.leftViewMode = UITextFieldViewModeAlways;
    myTextField.returnKeyType=UIReturnKeyDone;
    [myTextField setAutocorrectionType:UITextAutocorrectionTypeNo];
    [myTextField setDelegate:self];

    
    
    
    CGRect textFieldFramePassword = CGRectMake(28, 330, 275.0f, 31.0f);
    self.myTextFieldPassword = [[UITextField alloc]initWithFrame:textFieldFramePassword];
    self.myTextFieldPassword.borderStyle = UITextBorderStyleNone;
    self.myTextFieldPassword.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    //self.myTextFieldPassword.text = @"PASSWORD";
    self.myTextFieldPassword.placeholder = @"PASSWORD";
    self.myTextFieldPassword.textColor = [[UIColor grayColor] colorWithAlphaComponent: 5.8f];
    self.myTextFieldPassword.font = [UIFont fontWithName:@"Gill Sans" size:18.0];
    [self.view addSubview:self.myTextFieldPassword];
    [myTextFieldPassword setBackground:fieldBGImage];
    UIView *paddingViewPassword = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 0)];
    myTextFieldPassword.leftView = paddingViewPassword;
    myTextFieldPassword.leftViewMode = UITextFieldViewModeAlways;
    myTextFieldPassword.returnKeyType = UIReturnKeyDone;
    [myTextFieldPassword setAutocorrectionType:UITextAutocorrectionTypeNo];
    [myTextFieldPassword setDelegate:self];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(182, 370, 150, 30)];
    //button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"loginButton.png"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.layer.shadowOpacity = 0.5;
    button.layer.shadowColor = [UIColor blackColor].CGColor;
    button.layer.shadowRadius = 1;
    button.layer.shadowOffset = CGSizeMake(2.0f, 2.0f);
    
    UIButton *sharingButton = [[UIButton alloc]initWithFrame:CGRectMake(200, 25, 150, 30)];
    //button = [UIButton buttonWithType:UIButtonTypeCustom];
    [sharingButton setImage:[UIImage imageNamed:@"share.png"] forState:UIControlStateNormal];
    [self.view addSubview:sharingButton];
    
    //UIButton *tweetImage = [[UIButton alloc]initWithFrame:CGRectMake(40, 45, 250, 300)];
    //[tweetImage setImage:[UIImage imageNamed:@"twitterFeedImage.png"] forState:UIControlStateNormal];
    //[self.view addSubview:tweetImage];
    
    
    
    
    
    
    

    
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [myTextFieldPassword endEditing:YES];
    [myTextField endEditing:YES];

    return YES;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
