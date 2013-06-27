//
//  PasswordFeedViewController.m
//  AddLockers
//
//  Created by Andrew Bennie on 6/26/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "PasswordFeedViewController.h"

@interface PasswordFeedViewController ()

@end

@implementation PasswordFeedViewController

//helper method that keeps our barButtonItems creation separate from our viewDidLoad (this is only done to keep viewDidLoad cleaner

-(void)setupBarButtonItems {
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    UIBarButtonItem *addLockerBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Add Locker" style:UIBarButtonItemStyleBordered target:self action:@selector(addBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = addLockerBarButtonItem;
}

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
    
    //call helper method
    [self setupBarButtonItems];
    
    //set the datasource and delegate properties of UITableView
    self.passwordFeedTableView.delegate = self;
    self.passwordFeedTableView.dataSource = self;
    
    
    if (!self.lockers){
        self.lockers = [[NSMutableArray alloc] init];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

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
    
    //since our lockers array contains a list of Account Objects we can index into our array and set the value equal to a local variable we will call account.
    LockerAccount *account =[self.lockers objectAtIndex:indexPath.row];
    
    cell.textLabel.text = account.password;
    
    return cell;
}

//setups our edit button to go into edit mode.
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    [self.passwordFeedTableView setEditing:editing animated:YES];
}

#pragma mark - UITableViewDelegate

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        //remove cell here
    }
}

#pragma mark - IBActions

-(void)addBarButtonItemPressed:(id)sender
{
    AddLockerViewController *addLockerViewController = [[AddLockerViewController alloc] initWithNibName:nil bundle:nil];
    addLockerViewController.delegate = self;
    [self.navigationController pushViewController:addLockerViewController animated:YES];
}

#pragma mark - AddLockerViewControllerDelegate
//implement the protocol method we defined in AddLockerViewController
-(void)lockersAdded:(LockerAccount *)account
{
    [self.lockers addObject:account];
    [self.passwordFeedTableView reloadData];
}

@end
