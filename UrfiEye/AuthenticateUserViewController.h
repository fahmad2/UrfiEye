//
//  AuthenticateUserViewController.h
//  UrfiEye
//
//  Created by Faizan Urfi on 10/2/16.
//  Copyright © 2016 Faizan Urfi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AuthenticateUserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userNameTxtField;
@property (strong, nonatomic) NSString * userNameText;
@property (weak, nonatomic) IBOutlet UIButton *btnSignUp;
- (IBAction)takeToSignUpScreen:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *btnSearchUser;
- (IBAction)compareToDB:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *userNameNotExistsLabel;

@end
