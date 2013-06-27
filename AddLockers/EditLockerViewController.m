//
//  EditLockerViewController.m
//  AddLockers
//
//  Created by Andrew Bennie on 6/26/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "EditLockerViewController.h"

@interface EditLockerViewController ()

@end

@implementation EditLockerViewController

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
    
    self.editAccountTitle.delegate = self;
    self.editUserName.delegate = self;
    self.editPassword.delegate = self;
    self.editUrl.delegate = self;
    
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(saveBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.editAccountTitle resignFirstResponder];
    [self.editUserName resignFirstResponder];
    [self.editPassword resignFirstResponder];
    [self.editUrl resignFirstResponder];
    return YES;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
