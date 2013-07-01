//
//  Categories.h
//  AddLockers
//
//  Created by Andrew Bennie on 7/1/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "LockerAccount.h"

@class LockerAccount;

@interface Categories : LockerAccount

@property (nonatomic, retain) id categoryName;

@end
