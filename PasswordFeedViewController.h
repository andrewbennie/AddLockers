//
//  PasswordFeedViewController.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/26/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddLockerViewController.h"


// UITableView has 2 protocols: UITableViewDelegate & UITableViewDataSource.  We also created our own protocol located in the AddLockerViewController.h file

@interface PasswordFeedViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, AddLockerViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITableView *passwordFeedTableView;

//our lockers array will be an ordered set/list of the passwords we add to our locker list.
@property (strong, nonatomic) NSMutableArray *lockers;

@end
