//
//  ViewController.m
//  AddLockers
//
//  Created by Andrew Bennie on 6/20/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "ViewController.h"
#import "LockerListViewController.h"
//#import "PasswordItem.h" from Frank's code

@interface ViewController ()

@end

@implementation ViewController

//implement delegate
//-(void)LockerListViewDelegate: (NSNotification*)notification
//#pragma mark - Setup
//set up delegate

//{ViewController *LockerListViewDelegate = [[ViewController alloc] init];
    

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

//make sure that all textfields have some information entered
{if([self.userName.text isEqualToString:@""] || [self.accountTitle.text isEqualToString:@""] || [self.password.text isEqualToString:@""])
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Please fill in all required fields before continuing." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}
    
    LockerAccount *account = [[LockerAccount alloc] init];
        account.accountTitle = self.accountTitle.text;
        account.userName = self.userName.text;
        account.password = self.password.text;
        account.url = self.url.text;
          //Add delegate? LockerAccount.delegate = self;
       // [self.navigationController popViewControllerAnimated:YES];
    }

//{
//       self.account =[NSEntityDescription insertNewObjectForEntityForName:@"LockerAccount" inManagedObjectContext:self.managedObjectContext];
//}

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

