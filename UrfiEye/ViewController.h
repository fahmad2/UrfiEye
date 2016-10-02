//
//  ViewController.h
//  UrfiEye
//
//  Created by Faizan Urfi on 10/2/16.
//  Copyright © 2016 Faizan Urfi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UIButton *btnClickMe;
- (IBAction)takeToLoginScreen:(id)sender;
@end

