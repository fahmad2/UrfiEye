//
//  ViewController.m
//  UrfiEye
//
//  Created by Faizan Urfi on 10/2/16.
//  Copyright © 2016 Faizan Urfi. All rights reserved.
//

#import "ViewController.h"
#import "AuthenticateUserViewController.h"
//#import "SubmissionService.h"

@interface ViewController ()

@end

@implementation ViewController


-(void)viewWillAppear:(BOOL)animated {
    self.welcomeLabel.text = @"Saad";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.btnClickMe.tintColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takeToLoginScreen:(id)sender {
    AuthenticateUserViewController * vc = [[AuthenticateUserViewController alloc]initWithNibName:@"AuthenticateUserViewController" bundle:[NSBundle mainBundle]];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
