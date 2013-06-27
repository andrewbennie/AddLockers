//
//  EditLockerViewController.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/26/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LockerAccount.h"

@interface EditLockerViewController : UIViewController <UITextFieldDelegate>

//hook up all textfields

@property (strong, nonatomic) IBOutlet UITextField *editAccountTitle;
@property (strong, nonatomic) IBOutlet UITextField *editUserName;
@property (strong, nonatomic) IBOutlet UITextField *editPassword;
@property (strong, nonatomic) IBOutlet UITextField *editUrl;

@end

// we setup our own protocol.  QCPasswordFeedViewController will have to conform to the QCAddPasswordViewControllerDelegate and then it will be able to implement the method we define below: -(void)passwordAdded:(QCAccount *)account;

@protocol EditLockerViewControllerDelegate <NSObject>

-(void)lockerAdded :(LockerAccount *)account;


// we create our own property name delegate.  Now when we create instances of EditPasswordViewController we can set the property 'delegate' equal to self

@property (weak) id <EditLockerViewControllerDelegate> delegate;


@end
