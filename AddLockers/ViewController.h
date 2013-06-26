//
//  ViewController.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/20/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LockerListViewController.h"
#import "LockerAccount.h"

//we setup our own protocol.  LockerListViewController will have to conform to the AddLockerVCDelegate and then it will be able to implement the method we define below:

@protocol AddLockersDelegate <NSObject>

@end

//Conform to UITextFieldDelegate


@interface ViewController : UIViewController <UITextFieldDelegate>

//LockerListViewControllerDelegate>

//hook up all view objects to our header file



@property (strong, nonatomic) IBOutlet UITextField *accountTitle;
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *url;

@end
