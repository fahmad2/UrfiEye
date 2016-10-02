//
//  SignUpViewController.m
//  UrfiEye
//
//  Created by Faizan Urfi on 10/2/16.
//  Copyright © 2016 Faizan Urfi. All rights reserved.
//

#import "SignUpViewController.h"
//#import "User.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.createTextField.delegate = self;
    
    //load Users here not create new set everytime
    self.userSet = [NSMutableSet new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma MARK - UITextFieldDelgate

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    self.userNameString = string;
    return [self checkSet:self.userNameString];
}


-(BOOL)checkSet:(NSString *)userName {
    /*for(User * u in self.userSet) {
        if([self.userSet containsObject:u.userName]){
            self.alreadyExistsLabel.hidden = NO;
            return NO;
        }
    }*/
    
    self.alreadyExistsLabel.hidden = NO;
    return YES;
}

- (IBAction)createAccount:(id)sender {
    /*User * u = [User new];
    u.userName = self.userNameString;
    u.userImage = self.eyeImageView.image;
    
    [self.userSet addObject: u] */
}
@end
