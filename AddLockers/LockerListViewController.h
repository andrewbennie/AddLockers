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


@interface LockerListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

//IBOutlet to View object
@property (nonatomic, retain) IBOutlet UITableView *feedAccountsTable;

@property(nonatomic) BOOL *textField;

@property (weak) id <LockerListViewControllerDelegate> delegate;

//Check code: @property (nonatomic, retain) NSManagedObjectContext;

//An array that we will populate with all account objects saved to core data.
@property (strong, nonatomic) NSMutableArray *accountsArray;

@end





