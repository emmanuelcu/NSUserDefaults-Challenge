//
//  SignInViewController.h
//  NSUserDefaults Challenge
//
//  Created by Emmanuel Cuevas on 9/10/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAccountViewController.h"

@interface SignInViewController : UIViewController <CreateAccountViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextField *usernameLoginTextfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordLoginTextfield;
- (IBAction)loginButton:(UIButton *)sender;
- (IBAction)signupButton:(UIBarButtonItem *)sender;

@end
