//
//  AuthenticateUserViewController.m
//  UrfiEye
//
//  Created by Faizan Urfi on 10/2/16.
//  Copyright © 2016 Faizan Urfi. All rights reserved.
//

#import "AuthenticateUserViewController.h"
#import "SignUpViewController.h"

@interface AuthenticateUserViewController ()
    @property(nonatomic) BOOL userExists;
@end

@implementation AuthenticateUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.userExists = NO;
    self.userNameText = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takeToSignUpScreen:(id)sender {
    SignUpViewController * svc = [[SignUpViewController alloc]initWithNibName:@"SignUpViewController" bundle:[NSBundle mainBundle]];
    
    svc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentViewController:svc animated:YES completion:nil];
}


- (IBAction)compareToDB:(id)sender {
    self.userNameText = self.userNameTxtField.text;
    //pass text to some function that checks backend
    self.userExists = [self compareToDatabase:self.userNameText];

    if(self.userExists) {
        self.userNameNotExistsLabel.hidden = YES;
    }
    
    else {
        self.userNameNotExistsLabel.hidden = NO;
    }
    
}

-(BOOL)compareToDatabase:(NSString *)userName {
    return YES;
}
@end
