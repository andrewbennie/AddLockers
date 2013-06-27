//
//  AddLockerViewController.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/26/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LockerAccount.h"

// we setup our own protocol.  QCPasswordFeedViewController will have to conform to the QCAddPasswordViewControllerDelegate and then it will be able to implement the method we define below: -(void)passwordAdded:(QCAccount *)account;

@protocol AddLockerViewControllerDelegate <NSObject>

-(void)lockerAdded:(LockerAccount *)account;


@end

@interface AddLockerViewController : UIViewController <UITextFieldDelegate>

// we create our own property name delegate.  Now when we create instances of QCAddPasswordViewController we can set the property 'delegate' equal to self

@property (weak) id <AddLockerViewControllerDelegate> delegate;

//Hook up all views to header file

@property (strong, nonatomic) IBOutlet UILabel *addPasswordLabel;

@property (strong, nonatomic) IBOutlet UITextField *accountTitle;
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *url;
@property (strong, nonatomic) IBOutlet UIButton *generatePassword;
@property (strong, nonatomic) IBOutlet UIButton *generatePasswordButtonPressed;
- (NSString *)randomString:(NSInteger)length;


@end
