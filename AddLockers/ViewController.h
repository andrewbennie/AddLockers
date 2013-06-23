//
//  ViewController.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/20/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LockerAccount.h"

//we setup our own protocol.  LockerListViewController will have to conform to the AddLockerViewControllerDelegate and then it will be able to implement the method we define below:
 

 
@protocol ViewControllerDelegate <NSObject>

//Conform to UITextFieldDelegate
@end


@interface ViewController : UIViewController <UITextFieldDelegate>


//hook up all view objects to our header file



@property (strong, nonatomic) IBOutlet UITextField *accountTitle;
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *url;
@property (strong, nonatomic) id delegate;

@end
