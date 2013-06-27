//
//  CreateAccountViewController.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/25/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

//CreateAccountViewController conforms to the UITextFieldDelegate

@interface CreateAccountViewController : UIViewController <UITextFieldDelegate>

//hook up view objects to our header file

@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;


@end


