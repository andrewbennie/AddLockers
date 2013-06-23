//
//  ViewController.m
//  AddLockers
//
//  Created by Andrew Bennie on 6/20/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Setup

/* helper method that keeps our barButtonItem creation seperate from our viewDidLoad (this is only done to keep viewDidLoad a little cleaner */
- (void)addBarButtonItem

{
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
    
    
    
    // set the title of the page in the navigation controller
    self.title = @"Add Lockers";
    
    

}

#pragma mark - ViewLifeCycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.accountTitle.delegate = self;
    self.userName.delegate = self;
    self.password.delegate = self;
    self.url.delegate = self;
    
    [self addBarButtonItem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(void)saveBarButtonItemPressed:(id)sender
{
    if ([self.password.text isEqualToString:@""]){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You must enter a password" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles: nil];
        [alertView show];
    }
    else {
        LockerAccount *account = [[LockerAccount alloc] init];
        account.accountTitle = self.accountTitle.text;
        account.userName = self.userName.text;
        account.password = self.password.text;
        account.url = self.url.text;
        //[self.delegate passwordAdded:account];
        [self.navigationController popViewControllerAnimated:YES];
    }
}
#pragma mark - UITextFieldDelegate

//implement the UITextField Protocol method that will be called every time the user presses the return key on the keyboard.

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.accountTitle resignFirstResponder];
    [self.userName resignFirstResponder];
    [self.password resignFirstResponder];
    [self.url resignFirstResponder];
    
    return YES;
}


@end
