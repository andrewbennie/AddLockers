//
//  LockerListViewController.m
//  AddLockers
//
//  Created by Andrew Bennie on 6/20/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "LockerListViewController.h"

@interface LockerListViewController ()


@end

@implementation LockerListViewController

//- (id) initWithName :(NSMutableArray *)accountsArray

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
    
//  LockerListViewController *accountsArray = [[LockerListViewController alloc] initWithNib:@"accountsArray" bundle:nil];
//  LockerListViewController.textField= YES;
//   [self pushViewController:accountsArray animated:YES];
//    
//   {
//    NSMutableArray *accountsArray = [NSMutableArray arrayWithObjects:
//                                         accountTitle, userName, password, timeCreated, url, nil];
//    }
    
    [[NSManagedObjectContext MR_contextForCurrentThread] MR_saveToPersistentStoreAndWait];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
