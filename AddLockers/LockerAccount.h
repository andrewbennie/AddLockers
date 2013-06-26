//
//  LockerAccount.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/24/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
//#import "LockerListViewControllerDelegate.h"

@class LockerAccount;

@interface LockerAccount : NSManagedObject

@property (nonatomic, retain) NSString * accountTitle;
@property (nonatomic, retain) NSString * password;
@property (nonatomic) NSTimeInterval timeCreated;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSString * userName;
@property (nonatomic, retain) LockerAccount *relationship;

@end
