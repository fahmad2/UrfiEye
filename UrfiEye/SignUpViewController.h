//
//  SignUpViewController.h
//  UrfiEye
//
//  Created by Faizan Urfi on 10/2/16.
//  Copyright © 2016 Faizan Urfi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *btnCreateAccount;
- (IBAction)createAccount:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *createTextField;
@property (weak, nonatomic) IBOutlet UIImageView *eyeImageView;
@property (weak, nonatomic) IBOutlet UILabel *alreadyExistsLabel;

@property (strong, nonatomic) NSString * userNameString;

@property (strong, nonatomic) NSMutableSet * userSet;

-(BOOL)checkSet:(NSString *)userName;
@end
