//
//  SignInViewController.m
//  NSUserDefaults Challenge
//
//  Created by Emmanuel Cuevas on 9/10/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//Prepare for segue method

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]]) {
        CreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
}

- (IBAction)loginButton:(UIButton *)sender {
    
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    
    if ([self.usernameLoginTextfield.text isEqualToString:username] && [self.passwordLoginTextfield.text isEqualToString:password]) {
            [self performSegueWithIdentifier:@"toViewController" sender:sender];
    }
    else{
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Username or password are wrong. Please, verify your username or password again." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alertView show];
    }
    
}

- (IBAction)signupButton:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"toCreateAccountViewController" sender:sender];
}

#pragma mark CreateAccountViewController Delegate

-(void)didCancel{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)didCreateAccount{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
