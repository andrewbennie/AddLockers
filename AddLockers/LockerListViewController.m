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
    
// LockerListViewController *lockerListViewController = [[LockerListViewController alloc] initWithNib:@"lockerListViewController" bundle:nil];
//   LockerListViewController.UITableViewCellStateShowingEditControlMask= YES;
//   [self pushViewController:lockerListViewController animated:YES];
// 
//   {
//    NSMutableArray *accountsArray = [NSMutableArray arrayWithObjects: accountTitle.text, userName, password, timeCreated, url, nil];
//}
//    
//    [[NSManagedObjectContext MR_contextForCurrentThread] MR_saveToPersistentStoreAndWait];
//}

- (void)didReceiveMemoryWarning

#pragma mark - UITableViewDataSource
{
    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
    {
        return 1;
    }
    
    //numberOfRowsInsections, change the return value to declare how many rows are in our section
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
    {
        return self.lockers.count;
    }
    
    //setup the tableView's cells.
    -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated

@end
