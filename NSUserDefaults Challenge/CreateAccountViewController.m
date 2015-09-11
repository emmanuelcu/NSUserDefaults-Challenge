//
//  CreateAccountViewController.m
//  NSUserDefaults Challenge
//
//  Created by Emmanuel Cuevas on 9/10/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

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

- (IBAction)createAccountButton:(UIButton *)sender {
    
    if ((self.usernameTextfield.text.length !=0) && (self.passwordTextfield.text.length !=0) && [self.passwordTextfield.text isEqualToString:self.confirmPasswordTextfield.text]) {
        
        
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextfield.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextfield.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [self.delegate didCreateAccount];
        
    }
    else{
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"The password are not the same. Verify your password again." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
        [alertView show];
    }
}

- (IBAction)cancelButton:(UIButton *)sender {
    
    [self.delegate didCancel];
}
@end
