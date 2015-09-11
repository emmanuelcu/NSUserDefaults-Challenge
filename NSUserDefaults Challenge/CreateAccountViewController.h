//
//  CreateAccountViewController.h
//  NSUserDefaults Challenge
//
//  Created by Emmanuel Cuevas on 9/10/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>

#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol CreateAccountViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didCreateAccount;

@end

@interface CreateAccountViewController : UIViewController

//When you use a delegate protocol you have to create a WEAK property always to delegate the information
@property (weak,nonatomic) id <CreateAccountViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *usernameTextfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextfield;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextfield;
- (IBAction)createAccountButton:(UIButton *)sender;
- (IBAction)cancelButton:(UIButton *)sender;

@end
