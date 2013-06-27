//
//  SignInViewController.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/25/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
/* Import both the CreateAccountViewController and QCPasswordFeedViewController's means that we can create instances of these classes ergo we can push/present instances of these classes */
#import "CreateAccountViewController.h"
#import "PasswordFeedViewController.h"

//class must conform to the UITextField Delegate and we can now implment UITextField Delegate methods

@interface SignInViewController : UIViewController<UITextFieldDelegate>

//outlet to the password textField
@property (strong, nonatomic) IBOutlet UITextField *enterPasswordTextField;

//Actions/methods that will be called/evaluated when their respective buttons are pressed.
- (IBAction)loginButtonPressed:(UIButton *)sender;
- (IBAction)createAccountButtonPressed:(UIButton *)sender;


@end



