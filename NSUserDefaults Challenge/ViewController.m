//
//  ViewController.m
//  NSUserDefaults Challenge
//
//  Created by Emmanuel Cuevas on 9/10/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "ViewController.h"
#import "CreateAccountViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
