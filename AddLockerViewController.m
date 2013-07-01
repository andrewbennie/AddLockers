//
//  AddLockerViewController.m
//  AddLockers
//
//  Created by Andrew Bennie on 6/26/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "AddLockerViewController.h"

@interface AddLockerViewController ()

@end

@implementation AddLockerViewController


-(void)addBarButtonItem
{
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
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
    
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
    [self.generatePassword setTitle:@"Random" forState:UIControlStateNormal];
}
-(NSString *)randomString:(NSInteger)length

{
    
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity:length];
    
    for (int i = 0; i < length; i++) {
        
        [randomString appendFormat:@"%C", [letters characterAtIndex:arc4random() % [letters length]]];
        
    }
    
    return randomString;
    
}
//set up account object
{
    LockerAccount *account = [[LockerAccount alloc] init];
    account.accountTitle = self.accountTitle.text;
    account.userName = self.userName.text;
    account.password = self.password.text;
    account.url = self.url.text;
    [self.delegate lockerAdded:account];
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
        if ([self.password.text isEqualToString:self.password.text]){
            NSUserDefaults *standardUserDefaults = [NSUserDefaults standardUserDefaults];
            [standardUserDefaults setObject:self.accountTitle.text forKey:@"account title"];
            [standardUserDefaults setObject:self.userName.text forKey:@"username"];
            [standardUserDefaults setObject:self.password.text forKey:@"password"];
            [standardUserDefaults setObject:self.url.text forKey:@"url"];
            [standardUserDefaults synchronize];
        
        [self.navigationController popViewControllerAnimated:YES];
        
    }
    }


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.accountTitle resignFirstResponder];
    [self.userName resignFirstResponder];
    [self.password resignFirstResponder];
    [self.url resignFirstResponder];
    return YES;
}

- (IBAction)generatePasswordPressed:(id)sender {
    self.password.text = [self randomString:8];
}
//If the save button is pressed take the user to the LockerListView page.
    
- (IBAction)savePressed:(UIButton *)sender {
    
    LockerListViewController *lockerListViewController = [[LockerListViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:lockerListViewController animated:YES];
}


#pragma mark - TextFieldDelegate

//implement the textField Delegate method
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.enterPasswordTextField resignFirstResponder];
    return YES;
}

- (IBAction)enterPasswordTextField:(id)sender 

@end
