//
//  LockerListViewController.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/20/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddLockerViewController.h"
#import "LockerAccount.h"
@protocol LockerListViewControllerDelegate <NSObject>
@end

// UITableView has 2 protocols: UITableViewDelegate & UITableViewDataSource.  We also created our own protocol located in the LockerListViewController.h file

@interface LockerListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, LockerListViewControllerDelegate>

//IBOutlet to View object
@property (strong, nonatomic) IBOutlet UITableView *listTableView;

@property(nonatomic) BOOL *textField;

@property (weak) id <LockerListViewControllerDelegate> delegate;

//Add Property for NSManagedObject? @property (nonatomic, retain) NSManagedObjectContext;

//An array that we will populate with all account objects saved to core data.
@property (strong, nonatomic) NSMutableArray *accountsArray;

@end

