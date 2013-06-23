//
//  LockerAccount.h
//  AddLockers
//
//  Created by Andrew Bennie on 6/20/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface LockerAccount : NSManagedObject

@property (nonatomic, retain) NSString * accountTitle;
@property (nonatomic, retain) NSString * userName;
@property (nonatomic) NSString * password;
@property (nonatomic, retain) NSString * url;
@property (nonatomic) NSTimeInterval timeCreated;


@end
